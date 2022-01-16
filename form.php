<?php if(@$_GET['q']==10) {
$sid=@$_GET['sid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$c=1;
$p=mysqli_query($con,"SELECT attempt_id FROM `subjective_answer` WHERE sid='$sid'" );
while($data=mysqli_fetch_array($p))
{
	extract($data);
	}
$q=mysqli_query($con,"SELECT * FROM subjective_answer LEFT JOIN subquestion on subjective_answer.questionid=subquestion.qid where subjective_answer.sid='$sid' and subjective_answer.attempt_id='$attempt_id'" );
echo '<div class="panel" style="margin:5%">';
	while($row=mysqli_fetch_array($q))
	{
	extract($row);
	$qns=$row['question'];
	$qid=$row['qid'];
	echo '<b>Question &nbsp;'.$c++.'&nbsp; ::   '.$qns.'?</b>
	<form  action="update.php" method="POST" class="form">
		<div class="form-group">
			<label>Answer</label>
			<input type="text"  value="',$answer,'" class="form-control col-lg-4" placeholder="enter answer" disabled></div><br/>
			<div class="form-group">
				<label>Marks</label>
				<input type="text"  name="marks[]"  class="form-control col-lg-4" placeholder="enter marks"></div><br/><br/>';
				}
				$c=0;
				echo'<br /><button type="submit" name="update" class="btn btn-primary"><span class="glyphicon glyphicon-lock" aria-hidden="true"></span>&nbsp;Submit</button></form></div>';
				//header("location:dash.php?q=4&step=2&eid=$id&n=$total");
				}?>