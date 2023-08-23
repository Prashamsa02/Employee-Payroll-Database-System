<!DOCTYPE html>
<html lang="en">
<title>Add employee</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/w3.css">
<link rel="stylesheet" href="css/font.css">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Poppins", sans-serif}
body {font-size:16px;}
.w3-half img{margin-bottom:-6px;margin-top:16px;opacity:0.8;cursor:pointer}
.w3-half img:hover{opacity:1}
</style>
<body>

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-light-blue w3-collapse w3-top w3-large w3-padding" style="z-index:3;width:300px;font-weight:bold;" id="mySidebar"><br>
    <div class="w3-container w3-pink">
    <h4>Menu</h4>
    </div>
    <img src="images/payroll.png" alt="Snow" style="width:100%;padding-top: 15px;padding-bottom: 15px;">
    <div class="w3-container w3-pink">
    <h4>Payroll system</h4>
    </div>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-button w3-hide-large w3-display-topleft" style="width:100%;font-size:22px">Close Menu</a>
  <div class="w3-container">
    
      
  </div>
  <div class="w3-bar-block">
      
      <dl>
          <dt><a href="home.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Home</a> </dt>
  <dt><a href="department.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white w3-white">Department</a> </dt>
          <dd></dd>
    <dt><a href="employee.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">  Employee  </a></dt>
          
          <dt><a href="employee-payment.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Payment Parameters</a> </dt>
          <dt><a href="employee-payslip.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Pay slip</a> </dt>
          <dt><a href="employee-setsalary.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Set salary</a> </dt>
          <dt><a href="employee-payhistory.php" onclick="w3_close()" class="w3-bar-item w3-button w3-hover-white">Payment history</a> </dt>
          
          
          
</dl>
      
    
     
   
    
    
    
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-container w3-top w3-hide-large w3-red w3-xlarge w3-padding">
  <a href="javascript:void(0)" class="w3-button w3-red w3-margin-right" onclick="w3_open()">☰</a>
  <span>Payroll system</span>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
  <div class="w3-main" style="margin-left:290px;margin-right:-10px;margin-top: -5px;margin-bottom: 0px">

  <!-- Header -->
      
      <div class="w3-display-container " style="font-size: 50px;color:#f5f5dc">
          <img src="images/h2.jpg" alt="Lights" style="width:100%" style="height: 150px">
  
      </div>
      <div class="w3-container" style="padding: 50px 200px 20px 200px">
      
      
      <form class="w3-container" action="dep-addphp.php" method="post">
          
                 <p><label>Department id</label>
                      <input class="w3-input w3-light-grey w3-animate-input" type="number" name="depid"></p>
                 <p>
                     <label>Department Name</label>
                        <input class="w3-input w3-light-grey w3-animate-input" type="text" name="depname">
                </p>
                
                 
                     <input type="submit" value="Submit" class="w3-input w3-pink w3-round-xxlarge w3-animate-input">
                     
       
                 
               
            </form>
      
      
      
      </div>
   
      
          
  </div>



</body>
</html>
