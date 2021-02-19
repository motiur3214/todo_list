
$(document).ready(function() {   
	check_flag();
	rem_item();
// check for any special charecter input
	document.getElementById('inputValue').onkeydown = function (e) {
		var value =  e.target.value;
		//only allow a-z, A-Z, digits 0-9, comma and space , with only 1 consecutive comma ...
		if (!e.key.match(/[a-zA-Z0-9, ]/) || (e.key == ',' && value[value.length-1] == ',')) {
			e.preventDefault();  
			alert("only (a-z) (A-Z) (0-9) is allowed");
			}else{

			}
		};
// submit new inputs
		$(document).on("submit", "form", function (event) {
			event.preventDefault();
			$(":submit", this).attr("disabled", "disabled");
			let inputValue=document.getElementById('inputValue').value;
			document.getElementById('inputValue').value = ''
			if (!inputValue.trim()) {
				alert("please right something");
				}else{
                   let form_data = new FormData();
					form_data.append('flagreq',"input_request");
					form_data.append("inputValue", inputValue);
					if( jQuery.isEmptyObject(form_data)){
						}else{
							$.ajax({
								url: "./backend.php",
								type: 'post',
								data:form_data,
								contentType: false,
								cache: false,
								processData: false,
								dataType: "json",
								success:function(data){

									rem_item();
									check_flag();
									document.getElementById("myDIV").innerHTML=" ";
									for (let s of data) { 
										getList(s.todo_text,s.id, s.completed_flag);
										// get all data after input data is succesfull
									}
									inputValue='';
									document.getElementById("submitBtn").disabled = false;
								}
								});
						}

					}
					});
		// handles edit and update new edited input
		$(document).on('click', "label#labelId", function() { 	
			let $lbl = $(this), o = $lbl.text(), u = $lbl.attr('for');
			$txt = $('<input type="text" class="editable-label-text" id="'+u+'"  value="'+o+'" />');

			$lbl.replaceWith($txt);
			$txt.focus();

			$txt.blur(function() {
				$txt.replaceWith($lbl);
				})
			.keydown(function(evt){
				if(evt.keyCode == 13) {
					let newtext = $(this).val();
					let id = $(this).attr('id')
					$lbl.text(newtext);
					$txt.replaceWith($lbl);
					update_text(id,newtext);

				}
				});
			}); 
//get all todos
		$(document).on('click','#allBtn', function(){
			let type=1;
			get_values(type);
			});
// get completed todos
		$(document).on('click','#comBtn', function(){
			let type=3;
			get_values(type);
			});
//get active todos 
		$(document).on('click','#actvBtn', function(){
			let type=2;
			get_values(type);
			// $("input[type='checkbox']").each(function() {
				//       this.checked = !this.checked;
				//       if ($(this).is(':checked')) {

					// } });
			});
// clear completed todos
		$(document).on('click','#clrBtn', function(){

			clear_completed();
           });
//handle the proccess of completed todos
// make a todo checked and updat as compeletd todo
		$(document).on('click','#todoList',function() {
			let getLabel=$(this).next('label');
			if ($(this).is(':checked')) {
				let type=2;
				$(getLabel).css('textDecoration', 'line-through');
				$(getLabel).fadeTo(1000, 0.5, function () {
					$(this).delay(1000);
					//$(this).prop('disabled',false).css('opacity',0.5);
					// $(this).fadeTo(1000, 200);/
					});
				let todoId=$(this).attr('value')	
				complete_task(todoId,type);
			}
			else{
				$(getLabel).css('textDecoration', 'none');
			}
			});


		});
//get data from mysql table and make new check box with the data
    const getList=(inputs,id,cFlag) =>{
	
	 document.getElementById("myDIV").style.display = "block";

	 let checkbox = document.createElement('input');
	 checkbox.type = 'checkbox';
	 checkbox.id = 'todoList';
	 checkbox.name = id;
	 checkbox.value =id;


	 let label = document.createElement('label');
	 label.htmlFor = id;
	 label.id = 'labelId';
	 label.appendChild(document.createTextNode(inputs));
	 let br = document.createElement('br');

	 let container = document.getElementById('myDIV');
	 container.appendChild(checkbox);
	 container.appendChild(label);
	 container.appendChild(br);
	 if (cFlag==1) {
		$( label ).fadeTo( "fast", 0.5 )
		$(checkbox).prop('checked', true);
		$(label).css('textDecoration', 'line-through');
		}else{
			$(checkbox).prop('checked', false);
			$(label).css('textDecoration', 'none');
		}

	}
//update text request fucntion
	const update_text=(id,newtext)=> {
		$.ajax({
			url: "./backend.php",
			method:'post',
			data:{
				flagreq:'update_request',
				id:id,
				newtext:newtext,
				contentType: false,
				cache: false,
				processData: false,
				},
				success:function(data){
					$.notify("Updated", "success");  
				}


				});
	}
//get values according to type 
// type 1: get all data
// type 2: get on active task
// type 3:get only completed task
	const get_values =(type)=>{
		$.ajax({
			url: "./backend.php",
			dataType: "json",
			method:'post',
			data:{
				flagreq:'get_values',
				type:type,
				contentType: false,
				cache: false,
				processData: false,
				},success:function(data){
					// console.log(data);

					rem_item();
					check_flag();
					document.getElementById("myDIV").innerHTML=" ";
					for (let s of data) { 
						getList(s.todo_text, s.id, s.completed_flag);

					}

				}


				});
	}
	//request todos to make a todo input completed
	const complete_task= (todoId,type)=> {
		$.ajax({
			url: "./backend.php",
			dataType: "json",
			method:'post',
			data:{
				flagreq:'com_task',
				type:type,
				todoId:todoId,
				contentType: false,
				cache: false,
				processData: false,
				},success:function(data){
					$.notify("Task completed", "success");

					rem_item();
					check_flag();

				}
				});
	}
	//request for clear completed todos
	const clear_completed = ()=>{
		$.ajax({
			url: "./backend.php",
			method:'post',
			data:{
				flagreq:'clear_request',
				contentType: false,
				cache: false,
				processData: false,
				},
				success:function(data){
					check_flag();
					document.getElementById("myDIV").innerHTML=" ";
					setTimeout(function () {
						$('#comBtn').focus();
						}, 100)
					$.notify("Item deleted", "success");  
					// console.log(rem_item());
				}
				});
	}
	//check request for cimpleted todos 
	const check_flag=()=>{
		$.ajax({
			url: "./backend.php",
			method:'post',
			data:{
				flagreq:'check_flag',
				contentType: false,
				cache: false,
				processData: false,
				},
				success:function(data){
					console.log(data);
					if(data>0){
						$('#spaces').show( "slow" );

						}else{
							document.getElementById("spaces").style.display = "none";
						}
					}
					});

	}
//get active todos request
	const rem_item=()=>{
		$.ajax({
			url: "./backend.php",
			method:'post',
			dataType:'json',
			data:{
				flagreq:'rem_item',
				contentType: false,
				cache: false,
				processData: false,
				},
				success:function(data){

					if(parseInt(data)){
						document.getElementById("remitem").style.display = "block";
						$('#remitem').html('<p>'+data+' items remain </p>');
						}else{
							document.getElementById("remitem").style.display = "none";

						}
					}
					});

	}