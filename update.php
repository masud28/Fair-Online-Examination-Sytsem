<?php
include_once 'dbConnection.php';
session_start();
$email=$_SESSION['email'];
$name=$_SESSION['name'];
if(isset($_POST['dsubmitans']))
{
$marks=$_POST['marks'];
$qid=$_POST['qid'];
$sid=$_POST['sid'];
$name=$_POST['name'];
//$name=$_SESSION['name'];
foreach($marks as $m)
{

  $sql='UPDATE `subjective_answer` SET  `marks`="'.$m.'" WHERE `name`="'.$name.'" and `questionid`="'.$qid.'" and `sid`="'.$sid.'"';
$q=mysqli_query($con,$sql)or die('Error147');
header("location:dash.php?q=9");
}
}
//delete feedback
if(isset($_SESSION['key'])){
if(@$_GET['fdid'] && $_SESSION['key']=='admin028') {
$id=@$_GET['fdid'];
$result = mysqli_query($con,"DELETE FROM feedback WHERE id='$id' ") or die('Error');
header("location:dash.php?q=3");
}
}
//delete user
if(isset($_SESSION['key'])){
if(@$_GET['demail'] && $_SESSION['key']=='admin028') {
$demail=@$_GET['demail'];
$r1 = mysqli_query($con,"DELETE FROM rank WHERE email='$demail' ") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM history WHERE email='$demail' ") or die('Error');
$result = mysqli_query($con,"DELETE FROM user WHERE email='$demail' ") or die('Error');
header("location:dash.php?q=1");
}
}
//remove quiz
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'rmquiz' && $_SESSION['key']=='admin028') {
$eid=@$_GET['eid'];
$result = mysqli_query($con,"SELECT * FROM questions WHERE eid='$eid' ") or die('Error');
while($row = mysqli_fetch_array($result)) {
  $qid = $row['qid'];
$r1 = mysqli_query($con,"DELETE FROM options WHERE qid='$qid'") or die('Error');
$r2 = mysqli_query($con,"DELETE FROM answer WHERE qid='$qid' ") or die('Error');
}
$r3 = mysqli_query($con,"DELETE FROM questions WHERE eid='$eid' ") or die('Error');
$r4 = mysqli_query($con,"DELETE FROM quiz WHERE eid='$eid' ") or die('Error');
$r4 = mysqli_query($con,"DELETE FROM history WHERE eid='$eid' ") or die('Error');
header("location:dash.php?q=5");
}
}
//add quiz
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'addquiz' && $_SESSION['key']=='admin028') {
$name = $_POST['name'];
$name= ucwords(strtolower($name));
$total = $_POST['total'];
$right = $_POST['right'];
$wrong = $_POST['wrong'];
$time = $_POST['time'];
$tag = $_POST['tag'];
$desc = $_POST['desc'];
$id=uniqid();
$q3=mysqli_query($con,"INSERT INTO quiz VALUES ('$id','$name' , '$right' , '$wrong','$total','$time' ,'$desc','$tag', NOW())");
header("location:dash.php?q=4&step=2&eid=$id&n=$total");
}
}
//add subjective
if(isset($_SESSION['key'])){
  
//if(@$_GET['q']== 'addsubjecitve' && $_SESSION['key']=='admin028'){
  if(isset($_REQUEST['submit'])){
$name = $_REQUEST['name'];
$name= ucwords(strtolower($name));
$total = $_REQUEST['total'];
$max = $_REQUEST['right'];
$time = $_REQUEST['time'];
$tag = $_REQUEST['tag'];
$intro = $_REQUEST['intro'];
$id=uniqid();
$q3=mysqli_query($con,"INSERT INTO subjective (sid,title,maximum,total,time,intro,tag,date) VALUES  ('$id','$name' , '$max' , '$total','$time' ,'$intro','$tag', NOW())");
header("location:dash.php?q=6&step=3&sid=$id&n=$total");
}
}
//add question
if(isset($_SESSION['key'])){
if(@$_GET['q']== 'addqns' && $_SESSION['key']=='admin028') {
$n=@$_GET['n'];
$eid=@$_GET['eid'];
$ch=@$_GET['ch'];
for($i=1;$i<=$n;$i++)
{
$qid=uniqid();
$qns=$_POST['qns'.$i];
$q3=mysqli_query($con,"INSERT INTO questions VALUES  ('$eid','$qid','$qns' , '$ch' , '$i')");
$oaid=uniqid();
$obid=uniqid();
$ocid=uniqid();
$odid=uniqid();
$a=$_POST[$i.'1'];
$b=$_POST[$i.'2'];
$c=$_POST[$i.'3'];
$d=$_POST[$i.'4'];
$qa=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$a','$oaid')") or die('Error61');
$qb=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$b','$obid')") or die('Error62');
$qc=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$c','$ocid')") or die('Error63');
$qd=mysqli_query($con,"INSERT INTO options VALUES  ('$qid','$d','$odid')") or die('Error64');
$e=$_POST['ans'.$i];
switch($e)
{
case 'a':
$ansid=$oaid;
break;
case 'b':
$ansid=$obid;
break;
case 'c':
$ansid=$ocid;
break;
case 'd':
$ansid=$odid;
break;
default:
$ansid=$oaid;
}
$qans=mysqli_query($con,"INSERT INTO answer VALUES  ('$qid','$ansid')");
}
header("location:dash.php?q=0");
}
}
//add subjective question
if(isset($_SESSION['key'])){
//if(@$_GET['q']== 'addqns' && $_SESSION['key']=='admin028') {
  if(isset($_REQUEST['squesubmit']))  {
$n=@$_GET['n'];
$sid=@$_GET['sid'];
$sid=substr($sid,0,6);
$ch=@$_GET['ch'];
for($i=1;$i<=$n;$i++)
{
$qid=uniqid();
$qns=$_POST['qns'.$i];
$q3=mysqli_query($con,"INSERT INTO subquestion (sid,qid,question)VALUES  ('$sid','$qid','$qns')");

}
header("location:dash.php?q=8");
}
}
//quiz start
if(@$_GET['q']== 'quiz' && @$_GET['step']== 2) {
$eid=@$_GET['eid'];
$sn=@$_GET['n'];
$total=@$_GET['t'];
$ans=$_POST['ans'];
$qid=@$_GET['qid'];
$q=mysqli_query($con,"SELECT * FROM answer WHERE qid='$qid' " );
while($row=mysqli_fetch_array($q) )
{
$ansid=$row['ansid'];
}
if($ans == $ansid)
{
$q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid' " );
while($row=mysqli_fetch_array($q) )
{
$right=$row['right'];
}
if($sn == 1)
{
$q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid' ,'0','0','0','0',NOW())")or die('Error');
}
$q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' ")or die('Error115');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$r=$row['right'];
}
$r++;
$s=$s+$right;
$q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`right`=$r, date= NOW()  WHERE  email = '$email' AND eid = '$eid'")or die('Error124');
}
else
{
$q=mysqli_query($con,"SELECT * FROM quiz WHERE eid='$eid' " )or die('Error129');
while($row=mysqli_fetch_array($q) )
{
$wrong=$row['wrong'];
}
if($sn == 1)
{
$q=mysqli_query($con,"INSERT INTO history VALUES('$email','$eid' ,'0','0','0','0',NOW() )")or die('Error137');
}
$q=mysqli_query($con,"SELECT * FROM history WHERE eid='$eid' AND email='$email' " )or die('Error139');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
$w=$row['wrong'];
}
$w++;
$s=$s-$wrong;
$q=mysqli_query($con,"UPDATE `history` SET `score`=$s,`level`=$sn,`wrong`=$w, date=NOW() WHERE  email = '$email' AND eid = '$eid'")or die('Error147');
}
if($sn != $total)
{
$sn++;
header("location:account.php?q=quiz&step=2&eid=$eid&n=$sn&t=$total")or die('Error152');
}
else if( $_SESSION['key']!='admin028')
{
$q=mysqli_query($con,"SELECT score FROM history WHERE eid='$eid' AND email='$email'" )or die('Error156');
while($row=mysqli_fetch_array($q) )
{
$s=$row['score'];
}
$q=mysqli_query($con,"SELECT * FROM rank WHERE email='$email'" )or die('Error161');
$rowcount=mysqli_num_rows($q);
if($rowcount == 0)
{
$q2=mysqli_query($con,"INSERT INTO rank VALUES('$email','$s',NOW())")or die('Error165');
}
else
{
while($row=mysqli_fetch_array($q) )
{
$sun=$row['score'];
}
$sun=$s+$sun;
$q=mysqli_query($con,"UPDATE `rank` SET `score`=$sun ,time=NOW() WHERE email= '$email'")or die('Error174');
}
header("location:account.php?q=result&eid=$eid");
}
else
{
header("location:account.php?q=result&eid=$eid");
}
}
//start subjective
if(isset($_REQUEST['submitans']))
{
$name=$_SESSION['name'];
$sid=$_REQUEST['sid'];
$sid=substr($sid,0,6);
$questionid=$_REQUEST['qid'];
$ans=$_REQUEST['ans'];
$total_ques=count($_REQUEST['ans']);
mysqli_query($con,"INSERT INTO subjective_attempt(name, sid, total_ques ) VALUES('$name','$sid','$total_ques')");
$attempt_id = mysqli_insert_id($con);
$n=0;
foreach($ans as $a)
{
$q2=mysqli_query($con,"INSERT INTO subjective_answer(name, sid, questionid, answer, attempt_id ) VALUES('$name','$sid','$questionid','$a','$attempt_id')");
$n+=mysqli_affected_rows($con);
}
  
if($n>0)
{
header("location:account.php?q=result&sid=$sid");
}
else
{
  echo"something went wrong";
}
}
?>