<?php
class PaidAmount extends DB{
    public $Id;
	public $StudentId;
	public $ClassId;
	public $DayId;
	public $MonthId;
	public $YearId;
	public $ShiftId;
	public $SectionId;
	public $PayOrPaidAmountTypeId;
	public $ExamNameId;
	public $Amount;
	public $SlNo;
	public $Date;
	
	
	
	
	
	
	public function Insert(){
		$this->Connect();
		
		$sql = "insert into paidamount(studentid,classid,dayid,monthid,yearid,shiftid,
		       sectionid,payorpaidamounttypeid,examanmeid,amount,slno,date) 
							
							values ('".MS($this->StudentId)."',
							        '".MS($this->ClassId)."',
							        '".MS($this->DayId)."',
									'".MS($this->MonthId)."',
								    '".MS($this->YearId)."',
									'".MS($this->ShiftId)."',
									'".MS($this->SectionId)."',
								    '".MS($this->PayOrPaidAmountTypeId)."',
									'".MS($this->ExamNameId)."',
									'".MS($this->Amount)."',
									'".MS($this->SlNo)."',
									'".MS($this->Date)."')";
							 
							 //echo $sql;
							
		
		if(mysql_query($sql)){
			return true;
		}
		else{
			$this->Err = mysql_error();
			return false;
		}
	}
	
	
	public function Update(){
	$this->Connect();
	$sql="UPDATE paidamount set 
	                      student='".MS($this->StudentId)."',
						  classid='".MS($this->ClassId)."',
						  dayid='".MS($this->DayId)."',
						  monthid='".MS($this->MonthId)."',
						  yearid='".MS($this->YearId)."',
						  shiftid='".MS($this->ShiftId)."',
						  sectionid='".MS($this->SectionId)."',
						  payorpaidamounttypeid='".MS($this->PayOrPaidAmountTypeId)."',
						  examnameid='".MS($this->ExamNameId)."',
						  amount='".MS($this->Amount)."',
						  date='".MS($this->Date)."'
	                      
						  where id='".$this->Id."'";
		
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
	$sql="delete from paidamount where id='".MS($this->Id)."'";
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
			$sql = "select * from payableamount where id = '".MS($this->Id)."'"; 
			//echo $sql;
			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$this->StudentId = $d[1];
				$this->ClassId = $d[2];
				$this->DayId = $d[3];
				$this->MonthId = $d[4];
				$this->YearId = $d[5];
				$this->ShiftId = $d[6];
				$this->SectionId = $d[7];
			    $this->PayOrPaidAmountTypeId = $d[8];
				$this->ExamNameId = $d[9];
				$this->Amount =$d[10];
				$this->Date =$d[11];
			}
		}	
		
		
		public function Select()
		{
			$this->Connect();
			$a = "";
			$sql = "select p.studentid, c.name, y.name, m.name, d.name, sh.name, se.name, pop.name, 
			        ex.name, p.slno, p.amount
			from paidamount as p, class as c, year as y,month as m,day as d, shift as sh,
			section as se,payorpaidamounttype as pop,examname as ex
			where 
			p.classid=c.id
			and
			p.payorpaidamounttypeid=pop.id
			and
			p.yearid=y.id
			and
			p.monthid=m.id
			and
			p.dayid=d.id
			and
			p.shiftid=sh.id
			and
			p.sectionid=se.id
			and
			p.examnameid = ex.id
			order by p.examnameid";
			//echo $sql;
			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$a[] = $d;	
			}
			return $a;
		}
		
		public function SelectAmount()//only check admin balance
		{
			$this->Connect();
			$a = "";
			$sql = "select p.id,sum(p.amount)	from paidamount as p	where p.id = p.id";
			
			if($this->MonthId != ""){
				$sql .= " AND p.monthid = '".MS($this->MonthId)."'";
			    }
			if($this->YearId != ""){
				$sql .= " AND p.yearid = '".MS($this->YearId)."'";
			    }
			if($this->DayId != ""){
				$sql .= " AND p.dayid = '".MS($this->DayId)."'";
			    }
			
				
			//echo $sql;
			//echo "<br />";

			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$a[] = $d;	
			}
			return $a;
		}	
	
		
	
	public function Select1()
		{
			$this->Connect();
			$a = "";
			$sql = "select sum(pay.amount) from payableamount as pay where pay.id = pay.id";
						
			if($this->ClassId != ""){
				$sql .= " AND pay.classid = '".MS($this->ClassId)."'";
			}
						
				$sql .= " GROUP BY pay.classid";
			
							 
			
			//echo $sql;
			
			$sql = mysql_query($sql);
			while($d = mysql_fetch_row($sql)) {
				$a[] = $d;	
			}
			return $a;
		}
	
		
		
		
		
		

	
}
?>