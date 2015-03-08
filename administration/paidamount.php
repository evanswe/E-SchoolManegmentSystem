<div class="row no-gutter">
<script>
	$(document).ready(function(e) {
        //alert("hi");
		$("#insert").click(function(){
			var error = 0;
			var pattern = /\d+([\/.]\d+)?/g;
			var pattern2 = /\d+([\/.]\d+)?/g;
			$(".trContainer").each(function(index, element) {
				var amount = $(this).children().find(".amount").val();
				var serial = $(this).children().find(".serial").val();

				if(!pattern.test(amount)){
					error++;
				}

				if(!pattern2.test(serial)){
					error++;
				}
				
			});
			
			alert(error);
			
			if(error == 0){
				//alert("You are ready to send data");

				var classId = $("#classId").val();
				var yearId = $("#yearId").val();
				var shiftId = $("#shiftId").val();
				var sectionId = $("#sectionId").val();
				var PayOrPaidAmountTypeId = $("#PayOrPaidAmountTypeId").val();
				
				var als = classId + " "+yearId+" "+shiftId+" "+sectionId+" "+PayOrPaidAmountTypeId;
				alert(als);
				/*$(".trContainer").each(function(index, element) {
                    var studentId = $(this).find(".studentId").eq(0).val();
					alert(studentId);
					
					/*$.post('administration/send.php', {
										ptTeacherId : teacherId,
										ptSectionId : sectionId,
										ptShiftId : shiftId,
										ptClassId : classId,
										ptYearId : yearId,
										
										ptStudentId: studentId,
										ptPresent: present,
										ptAbsent: absent
										},
										function(data){
										}).done(function(html) {
											$("#attendanceEntry").load(location.href + " #attendanceEntry");
											$("#message").append(html);
										});*/
										
                //});
								
				
			}
			//$("#attendanceEntry").hide();
			//$("#submit").hide();
		});
    });
</script>

 <div class="row">
 	 <div class="col-lg-6" id="message">
     </div>
 </div>


<form action="" method="post">
<table width="619" border="0" align="center">

<h2><center>
You want to go back select page<a href="?v=selectpaidamountlogout">&nbsp;Click Here</a>
</center><h2>
<h1><center>Paid Amount &nbsp; &nbsp;
<?php 
if(isset($_GET['msg'])){
	echo $_GET['msg'];
	}
?>
</center></h1>
  
  
  </table>
</form>
<table width="80%" class="table table-bordered" border="1" id="resultEntry" align="left">
  <tr bgcolor="#9EEDC6" class="heading" style="color:white">
    <th width="144">Student Id</th>
    <th width="172">Student Name</th>
    <th width="119">Amount</th>
    <th width="172">Sl No</th>
    </tr>
    
    
  <tr>
  	<td colspan="4">
    	<input type="text" name="classId" id="classId" value="<?php echo $_SESSION["cid"]; ?>" />
    	<input type="text" name="yearId" id="yearId" value="<?php echo $_SESSION["yid"]; ?>" />
    	<input type="text" name="shiftId" id="shiftId" value="<?php echo $_SESSION["shid"]; ?>" />
    	<input type="text" name="sectionId" id="sectionId" value="<?php echo $_SESSION["seid"]; ?>" />
    	<input type="text" name="PayOrPaidAmountTypeId" id="PayOrPaidAmountTypeId" value="<?php echo $_SESSION["popid"]; ?>" />
    </td>
  </tr>
  
 
 <?php 
 $acfs = new AssigningClassForStudent(); 
        $acfs->ClassId = $_SESSION['cid'];
		$acfs->YearId = $_SESSION['yid'];
		$acfs->ShiftId = $_SESSION['shid'];
		$acfs->SectionId = $_SESSION['seid'];   
        $r=$acfs->Select();
        if($r != ""){
        for($i=0; $i<count($r); $i++){
	    
	 	echo "<tr class='trContainer'>";
		echo "<td><input class='studentId' type='text' readonly='readonly' value='".$r[$i][0]."' /></td>";
		echo "<td>".$r[$i][6]."</td>";
	    echo "<td>".'<input class="amount" type="text" name="amount" placeholder="Amount" />'."</td>";
        echo "<td>".'<input class="serial" type="text" name="slno" placeholder="SlNo" />'."</td>";
	   echo "</tr>";

 }//loop
 }//loop
 
?>
<tr>
    <td colspan="4"><input type="submit" name="sub" id="insert" value="Insert" /></td>
  </tr>

 </tr>
  </table>
</div>