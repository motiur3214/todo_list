<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="includes/style.css">
  <title>ToDoList</title>
  <style type="text/css">


  </style>
</head>
<body>
  <div class="container-fluid mainContainer">
    <div>
      <h1>todos</h1>
    </div>
    
    <div class="actionDiv" >
      <form autocomplete="off">
        <div  class="form-control rounded-0">
         <!--  <span><i class="arrow down"></i></span> -->
         <input type="text" class="form-control w-90" id="inputValue" placeholder="Whats needs to be done?" required="required">

         <span class="input-group-btn">
          <button class="btn btn-primary submitBtn" id="submitBtn" ></button>
        </span>
      </div>
    </form>
    <div class="card rounded-0 " id="myDIV">

    </div>
    <div class="" id="btnDiv">
      <span id="remitem"></span>
      <button  class="btn btn-light btn-sm btnAll" id="allBtn" >All</button>
      <button  class="btn btn-light btn-sm btnAll" id="actvBtn">Active</button>
      <button  class="btn btn-light btn-sm btnAll" id="comBtn">Completed</button>
      <span id="spaces">
        <button  class="btn btn-light btn-sm btnAll" id="clrBtn">Clear Completed</button></span>
      </div>

    </div> 



  </div>



  

  

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src=https://cdnjs.cloudflare.com/ajax/libs/notify/0.4.2/notify.min.js></script>
  <script src="jScript/jsFile.js"></script>
  <script type="text/javascript">

  </script>
</body>
</html>