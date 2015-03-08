<?php
class PayableAmount extends DB{
	public $ClassId;
	public $DayId;
	public $MonthId;
	public $YearId;
	public $ShiftId;
    public $PayOrPaidAmountTypeId;
	public $Amount;
	public $ExamNameId;
	
	
	
	
	
	
	public function Insert(){
		$this->Connect();
		$sql = "insert into payableamount(classid, dayid, monthid, yearid, shiftid,
		                                  payorpaidamounttypeid, amount, examnameid) 
							
							values('".MS($this->ClassId)."',
								    '".MS($this->DayId)."',
									'".MS($this->MonthId)."',
									'".MS($this->YearId)."',
									'".MS($this->ShiftId)."',
								    '".MS($this->PayOrPaidAmountTypeId)."',
									'".MS($this->Amount)."',
									'".MS($this->ExamNameId)."')";
							 
							 echo $sql;
							
		
		if(mysql_query($sql)){
			return true;
		}
		else{
			$this->Err = mysql_error();
			return false;
		}
	}
	
	
	public function Update($ClassId, $YearId, $ShiftId,$ExamNameId){
	$this->Connect();
	$sql="UPDATE payableamount set 
	                      classid='".MS($this->ClassId)."',
						  dayid='".MS($this->DayId)."',
						  monthid='".MS($this->MonthId)."',
						  yearid='".MS($this->YearId)."',
						  shiftid='".MS($this->ShiftId)."',
						  payorpaidamounttypeid='".MS($this->PayOrPaidAmountTypeId)."',
						  amount='".MS($this->Amount)."',
						  examnameid='".MS($this->ExamNameId)."'
	                      
						  where classid='".($ClassId)."'
						  and
						  yearid='".($YearId)."'
						  and
						  shiftid='".($ShiftId)."'
						  and
						  examnameid='".($ExamNameId)."'";
		
		               //echo $sql;
		
		if(mysql_query($sql)){
			
		return true;	
		}
		else{
		$this->Err = mysql_error();
		return false;
		}
		
	 } 
	 
	 
	public function Delete(){
	$this->Connect();
	$sql="delete from payableamount where id='".MS($this->Id)."'";
	if(mysql_query($sql)){
		return true;
	 }
	 else{
		$this->Err = mysql_error();
		return false;
	  }
	
	}
	
	
		public function SelectById() {
			$this->Connect();
			$sql = "select * from payableamount where 
			classid = '".MS($this->ClassId)."' 
			and 
			yearid = '".MS($this->YearId)."'
			and
			shiftid = '".MS($this->ShiftId)."'
			and
			examnameid = '".MS($this->ExamNameId)."'"; 
			//echo $sql;
			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$this->ClassId = $d[0];
				$this->DayId = $d[1];
				$this->MonthId = $d[2];
				$this->YearId = $d[3];
				$this->ShiftId = $d[4];
			    $this->PayOrPaidAmountTypeId = $d[5];
				$this->Amount =$d[6];
				$this->ExamNameId =$d[7];
			}
		}	

		
		public function Select()
		{
			$this->Connect();
			$a = "";
			$sql = "select c.name, d.name, m.name, y.name, ex.name, sh.name, pop.name, pay.amount,
			        c.id,y.id,sh.id,ex.id from class as c, day as d, month as m, year as y, 
					shift as sh, payorpaidamounttype as pop, payableamount as pay, examname as ex
			where 
			pay.classid=c.id
			and
			pay.payorpaidamounttypeid=pop.id
			and
			pay.dayid=d.id
			and
			pay.monthid=m.id
			and
			pay.yearid=y.id
			and
			pay.examnameid=ex.id
			and
			pay.shiftid=sh.id
			
			order by pay.examnameid";
						
				
							 
			
			//echo $sql;
			
			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$a[] = $d;	
			}
			return $a;
		}
	
		public function SelectAmount()
		{
			$this->Connect();
			$a = "";
			$sql = "select paid.id,sum(paid.amount)	from paidamount as paid	where paid.id=paid.id";
			
			
		
			//echo $sql;
			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$a[] = $d;	
			}
			return $a;
		}
		
		
		
		

	
}
?>