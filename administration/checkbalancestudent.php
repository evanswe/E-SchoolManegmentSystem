<div class="row no-gutter">
<style type="text/css">

#tr_desigine1{
	height:30px;
	width:100%;
	background-color:#D4D4D4;
	float:left;
	position:relative;
	margin:3px; 0px 0px 5px;
}

#tr_desigine2{
	height:30px;
	width:100%;
	background-color:#66FFCC;
	float:left;
	position:relative;
}
</style>
<?php
$paid = new PaidAmount(); 
$c =  new Classs();
$sh = new Shift();
$y = new Year();
$ex = new ExamName();
?>
<form action="" method="post">

<table width="100%" border="1">
  <tr>
   <td width="13%">
    <input type="text" name="studentid" placeholder="Student Id" />
   </td>
   
   <td width="13%">
    <select name="classid">
    <option value="0">Select class</option>
    <?php
    $r = $c->Select();
	SelectFunction($r);
	?>
    </select>
   </td>
  
  <td width="11%">
  <select name="shiftid">
  <option value="0">Select Shift</option>
  <?php 
  $r = $sh->Select();
  SelectFunction($r);
  ?>
  </select>
  </td>
  
  <td width="11%">
  <select name="yearid">
  <option value="0">Select Year</option>
  <?php 
  $r = $y->Select();
  SelectFunction($r);
  ?>
  </select>
  </td>
  
  <td width="11%">
  <select name="examnameid">
  <option value="0">Select ExanName</option>
  <?php 
  $r = $ex->Select();
  SelectFunction($r);
  ?>
  </select>
  </td>
  
  
  <td>  
  <input type="submit" name="search" value="Search" /> 
  </td>
  
  
  </tr>
  
  </table>
</form>



<div class="left_col_photogallary_details_header">
<h1><center>Oxford International School</center></h1>
<h3><center>Dr. Nawab Ali Tower </center></h3>
<center>Receipt and Payment </center>
</div>
</br>
<div class="row small k-equal-height" style="height:auto; width:100%;float:left; position:relative;  background-color:#D9EDF7; border:2% #999999 solid;">
<table class="table"> 
 <tr class="info">
     <td>StudentId</td>
     <td>Class Name</td>
     <td>Date</td>
     <td>Exam Name</td>
     <td>SlNo</td>
     <td>Amount Type</td>
     <td>Amount</td>   
  </tr>

 <?php 
 $totalamount=0;
 if($_POST['studentid'] >0){
 $paid->StudentId = $_POST['studentid'];	 
 }
 if($_POST['classid'] > 0){
 $paid->ClassId = $_POST['classid'];
 }
 if($_POST['yearid'] > 0){
 $paid->YearId = $_POST['yearid'];
 }
 
 $mid=0;
 $r=$paid->Select();
 if($r !==""){
 for($i=0; $i<count($r); $i++){
	if($i>0){
	 if($r[$i-1][8] == $r[$i][8]){
				  }else{
						 if($r[$i][8] == "Mid Term Exam"){
						 echo "<tr style='background: #E1E1E1'><td colspan='10'><b><center>hgTotal</b></center></td></tr>";
						
						 }
						 else if($r[$i][8] == "Final Exam"){
						$mid=$totalamount;
						echo "<tr style='background: #E1E1E1'><td colspan='10'><b><center>Final=$mid</b></center></td></tr>";
						 }
						 
						 
					 }
				 } 
					 
	 $totalamount+=$r[$i][10];
	 echo "<tr class='success'>";
	 	echo "<td>".$r[$i][0]."</td>";
	 	echo "<td>".$r[$i][1]."</td>";
		echo "<td>".$r[$i][4].'-'.$r[$i][3].'-'.$r[$i][2]."</td>";
		echo "<td>".$r[$i][8]."</td>";
		echo "<td>".$r[$i][9]."</td>";
		echo "<td>".$r[$i][7]."</td>";
	 	echo "<td>"."&nbsp;&nbsp;&nbsp;&nbsp;".$r[$i][10]."&nbsp;Tk"."</td>";
    echo "<tr>";
   }
 }
 echo "<tr style='background: #E1E1E1'>";
	 	echo "<td colspan='10'>"."Total amount final".$final=$totalamount-$mid."</td>";
    echo "<tr>";
 ?>
  
   <tr class="success">
     <td>One</td>
     <td>2015</td>
     <td colspan="4">Total paid amount Mid & Final </td>
     <td><?php echo $totalamount; ?></td>
   </tr>
  
</table>

</div>
<div class="row small k-equal-height" style="height:auto; width:100%; border:2% #999999 solid; float:left; position:relative; background-color:#D9EDF7">

<table class="table"> 
 <tr class="info">
     <td>Class</td>
     <td>Year</td>
     <td>Exam Name</td>
     <td>Amount</td>
  </tr>

 
  <tr class="success">
     <td>One</td>
     <td>2015</td>
     <td>Mid Term</td>
     <td>5000</td>
   </tr>
  
   <tr class="danger">
     <td>One</td>
     <td>2015</td>
     <td>Final Exam</td>
     <td>5090</td>
   </tr>
   <tr class="success">
     <td>Two</td>
     <td>2015</td>
     <td>Mid Exam</td>
     <td>3000</td>
   </tr>
  
   <tr class="danger">
     <td>Two</td>
     <td>2015</td>
     <td>Final</td>
     <td>2000</td>
   </tr>


</table>

</div>





</div>