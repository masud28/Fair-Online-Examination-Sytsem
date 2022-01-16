<!-- Timer for MCQ -->

<p><b>You will have only 60 seconds per each question</p>

<div id="display"></div>

<div id="submitted"></div>

<script type="text/javascript">
function CountDown(duration, display) {
if (!isNaN(duration)) {
var timer = duration, minutes, seconds;
var interVal=  setInterval(function () {
minutes = parseInt(timer / 60, 10);
seconds = parseInt(timer % 60, 10);
minutes = minutes < 10 ? "0" + minutes : minutes;
seconds = seconds < 10 ? "0" + seconds : seconds;
$(display).html("<b>" + minutes + "m : " + seconds + "s" + "</b>");
if (--timer < 0) {
timer = duration;
SubmitFunction();
$('#display').empty();
clearInterval(interVal)
}
},1000);
}
}
function SubmitFunction(){
$('#submitted').html('');
$('#submitForm').submit();
}
CountDown(60,$('#display'));
</script>