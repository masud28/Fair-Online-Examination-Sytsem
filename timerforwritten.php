<!-- Timer for Written -->
<style type="text/css">
	
	.div1{
		width: 50;
		float: left;
		padding-right: 10px;
	}
	.div2{
		width: 50%;
		text-align: center;
	}
</style>

<div  class="flex-container">
	<div class="div1"><b>Total Time : </div>
	<div  class="div1" id="display"> </div>
</div>
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
$('#writtenForm').submit();
}
CountDown(1800,$('#display'));
</script>