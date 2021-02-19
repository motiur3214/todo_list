
<?php
require'./db_connect/connection.php';
extract($_POST);
$flag= $_POST["flagreq"];

//input request handle and save to mysql
if($flag == 'input_request')
{
	$inputValue = trim($_POST['inputValue']);

	try {
		$stmt = $conn->prepare("INSERT INTO tbl_todo_content(todo_text)
			VALUES (:inputValue)");
		$arr_out = array();
		$stmt->bindParam(':inputValue', $inputValue);
		$check=$stmt->execute();
		if($check){
			$type=1;
			$res = get_all_todos($type,$conn);
			echo json_encode($res);
		}
	} catch(PDOException $e) {
		echo "Error: " . $e->getMessage();
	}
	$conn = null;

}
// update request handle and update mysql data
if($flag == 'update_request')
{
	$newtext = trim($_POST['newtext']);
	$id = trim($_POST['id']);
	try {
		$sql = "UPDATE tbl_todo_content SET todo_text = '$newtext' WHERE id='$id'";
		$stmt = $conn->prepare($sql);
		$stmt->execute();
		echo $stmt->rowCount();
	} catch(PDOException $e) {
		echo $sql . "<br>" . $e->getMessage();
	}

	$conn = null;
}

// get all the entries from mysql table
if($flag == 'get_values')
{
	$type = trim($_POST['type']);
	$res=get_all_todos($type,$conn);
	echo json_encode($res);
}
//handle task complete and update to mysql 
if($flag == 'com_task')
{
	$id = trim($_POST['todoId']);
	$type = trim($_POST['type']);
	try {
		$sql = "UPDATE tbl_todo_content SET completed_flag = '1' WHERE id='$id'";
		$stmt = $conn->prepare($sql);
		$check=$stmt->execute();

		if($check){
			echo json_encode($check);
		}
	} catch(PDOException $e) {
		echo $sql . "<br>" . $e->getMessage();
	}
}
//clear all completed task but not fully deleted. as the completed task is migrated to another new table
if($flag == 'clear_request')
{
	try {
		$stmt_get = "SELECT `id`,`todo_text`,`completed_flag` FROM `tbl_todo_content` WHERE `completed_flag` IS NOT NULL";
		$result = $conn->query($stmt_get);

		$stmt = $conn->prepare("INSERT INTO tbl_archived_content (old_id, todo_text, completed_flag) VALUES (:old_id, :todo_text, :completed_flag)");

		foreach ($result as $row) {


			$stmt->bindParam(':old_id', $row['id']);
			$stmt->bindParam(':todo_text', $row['todo_text']);
			$stmt->bindParam(':completed_flag', $row['completed_flag']);
			$check=$stmt->execute();
			if($check){	
				$sql = "DELETE FROM tbl_todo_content WHERE completed_flag='1'";
				$conn->exec($sql);

			}
		}

	} catch(PDOException $e) {
		echo $sql . "<br>" . $e->getMessage();
	}
}
//check if task is completed 
if($flag == 'check_flag')
{
	try {
		$stmt_get = "SELECT `id` FROM `tbl_todo_content` WHERE `completed_flag` IS NOT NULL";
		$result = $conn->query($stmt_get);
		if ($result->rowCount() > 0) {
			echo(1);
		}else{
			echo(0);
		}
	}
	catch(PDOException $e) {
		echo $sql . "<br>" . $e->getMessage();
	}
}
// check how many task rmains to complete
if($flag == 'rem_item')
{
	try {
		$stmt_get = "SELECT `id` FROM `tbl_todo_content` WHERE `completed_flag` IS NULL";
		$result = $conn->query($stmt_get);
		$remain=$result->rowCount();

		echo json_encode($remain);

	}
	catch(PDOException $e) {
		echo $sql . "<br>" . $e->getMessage();
	}
}

//get data according to type
// type 1: get all data
// type 2: get on active task
// type 3:get only completed task
function get_all_todos($type,$conn){
	$arr_out = array();
	if ($type==2) {
		$stmt_get = "SELECT `id`,`todo_text`,`completed_flag` FROM `tbl_todo_content` WHERE `completed_flag` IS NULL";
	}elseif($type==3){
		$stmt_get = "SELECT `id`,`todo_text`,`completed_flag` FROM `tbl_todo_content` WHERE `completed_flag`IS  NOT NULL";
	}elseif($type==1){
		$stmt_get = "SELECT id, todo_text, completed_flag FROM tbl_todo_content ";
	}else{

	}

	$result = $conn->query($stmt_get);

	foreach ($result as $row) {
		$arr_out[] = $row;
	}
	return $arr_out;
}
?>