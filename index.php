<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Fair Online Examination System</title>
  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/bootstrap-theme.min.css" />
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/font.css">
  <script src="js/jquery.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
  <?php if (@$_GET['w']) {
    echo '<script>alert("' . @$_GET['w'] . '");</script>';
  }
  ?>
  <script>
    function validateForm() {
      var y = document.forms["form"]["name"].value;
      var letters = /^[A-Za-z]+$/;
      if (y == null || y == "") {
        alert("Name must be filled out.");
        return false;
      }
      var z = document.forms["form"]["instuition"].value;
      if (z == null || z == "") {
        alert("instuition must be filled out.");
        return false;
      }
      var x = document.forms["form"]["email"].value;
      var atpos = x.indexOf("@");
      var dotpos = x.lastIndexOf(".");
      if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
        alert("Not a valid e-mail address.");
        return false;
      }
      /*
      var phone_input = document.getElementById("mob");
      phone_input.addEventListener('input', () => {
      phone_input.setCustomValidity('');
      phone_input.checkValidity();
      });
      phone_input.addEventListener('invalid', () => {
      if(phone_input.value === '') {
      phone_input.setCustomValidity('Enter phone number!');
      } else {
      phone_input.setCustomValidity('Enter phone number in this format: 123-456-7890');
      }
      }) */
      var a = document.forms["form"]["password"].value;
      if (a == null || a == "") {
        alert("Password must be filled out");
        return false;
      }
      if (a.length < 5 || a.length > 25) {
        alert("Passwords must be 5 to 25 characters long.");
        return false;
      }
      var b = document.forms["form"]["cpassword"].value;
      if (a != b) {
        alert("Passwords must match.");
        return false;
      }
    }
  </script>
</head>

<body>
  <div class="header">
    <div class="row">
      <div class="col-lg-6">
        <span class="logo">Fair OES</span>
      </div>
      <div class="col-lg-6">
        <a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Sign In</b></span></a>
        <a href="#" class="pull-right btn sub1" data-toggle="modal" data-target="#login"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>&nbsp;<span class="title1"><b>Admin Login</b></span></a>
      </div>
      <!--sign in modal start-->
      <div class="modal fade" id="myModal">
        <div class="modal-dialog">
          <div class="modal-content title1">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
              <h4 class="modal-title title1"><span style="color:orange">Log In</span></h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal" action="login.php?q=index.php" method="POST">
                <fieldset>
                  <!-- Text input-->
                  <div class="form-group">
                    <label class="col-md-3 control-label" for="email"></label>
                    <div class="col-md-6">
                      <input id="email" name="email" placeholder="Enter your email-id" class="form-control input-md" type="email">

                    </div>
                  </div>
                  <!-- Password input-->
                  <div class="form-group">
                    <label class="col-md-3 control-label" for="password"></label>
                    <div class="col-md-6">
                      <input id="password" name="password" placeholder="Enter your Password" class="form-control input-md" type="password">

                    </div>
                  </div>
            </div>
            <div class="modal-footer">
              <button type="submit" class="btn btn-primary">Log In</button>
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </fieldset>
              </form>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
      <!--sign in modal closed-->
    </div>
    <!--header row closed-->
  </div>
  <div class="bg1">
    <div class="row">
      <div class="col-md-7"></div>
      <div class="col-md-4 panel">
        <!-- sign in form begins -->
        <form class="form-horizontal" name="form" action="sign.php?q=account.php" onSubmit="return validateForm()" method="POST">
          <fieldset>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="name"></label>
              <div class="col-md-12">
                <input id="name" name="name" placeholder="Enter your name" class="form-control input-md" type="text">

              </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="gender"></label>
              <div class="col-md-12">
                <select id="gender" name="gender" placeholder="Enter your gender" class="form-control input-md">
                  <option value="Male">Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                </select>
              </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="name"></label>
              <div class="col-md-12">
                <input id="instuition" name="instuition" placeholder="Enter your instuition name" class="form-control input-md" type="text">

              </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-12 control-label title1" for="email"></label>
              <div class="col-md-12">
                <input id="email" name="email" placeholder="Enter your email-id" class="form-control input-md" type="email">

              </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="mob"></label>
              <div class="col-md-12">
                <input id="mob" name="mob" placeholder="Enter your mobile number" class="form-control input-md" type="number">

              </div>
            </div>
            <!-- Text input-->
            <div class="form-group">
              <label class="col-md-12 control-label" for="password"></label>
              <div class="col-md-12">
                <input id="password" name="password" placeholder="Enter your password" class="form-control input-md" type="password">

              </div>
            </div>
            <div class="form-group">
              <label class="col-md-12control-label" for="cpassword"></label>
              <div class="col-md-12">
                <input id="cpassword" name="cpassword" placeholder="Conform Password" class="form-control input-md" type="password">

              </div>
            </div>
            <?php if (@$_GET['q7']) {
              echo '<p style="color:red;font-size:15px;">' . @$_GET['q7'];
            } ?>
            <!-- Button -->
            <div class="form-group">
              <label class="col-md-12 control-label" for=""></label>
              <div class="col-md-12">
                <input type="submit" class="sub" value="Sign Up" class="btn btn-primary" />
              </div>
            </div>
          </fieldset>
        </form>
      </div>
      <!--col-md-6 end-->
    </div>
  </div>
  </div>
  <!--container end-->
  <!--Footer start-->
  <div class="row footer">
    <div class="col-md-4 box">
      <a href="#" data-toggle="modal" data-target="#contacts">Contact Us</a>
    </div>
    <!-- Start Modal for Contacts -->
    <div class="modal fade title1" id="contacts">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
            <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">Contact Us</span></h4>
          </div>

          <div class="modal-body">
            <p>
            <div class="row">
              <div class="col-md-5">
                <a href="https://www.facebook.com/roufcse/" target="_blank" style="<color:#202020;font-family:'typo'; font-size:18px">Md. Abdur Rouf</a>
                <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+8801757011158</h4>
                <h4 style="font-family:'typo'">abdurrouf.cse.cu@gmail.com</h4>
                <h4 style="font-family:'typo' ">City University, Bangladesh</h4>
              </div>
            </div>
            </p>
          </div>
          <div class="modal-body">
            <p>
            <div class="row">
              <div class="col-md-5">
                <a href="https://www.facebook.com/HashtagMasud/" target="_blank" style="<color:#202020; font-family:'typo'; font-size:18px">Masud Rana</a>
                <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+8801760534597</h4>
                <h4 style="font-family:'typo'">masud15.cse@gmail.com</h4>
                <h4 style="font-family:'typo' ">City University, Bangladesh</h4>
              </div>
            </div>
            </p>
          </div>

        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- End Modal for Contacts -->
    <div class="col-md-4 box">
      <a href="#" data-toggle="modal" data-target="#developers">Developers</a>
    </div>
    <div class="col-md-4 box">
      <a href="feedback.php" target="_blank">Feedback</a>
    </div>
  </div>
  <!-- Modal For Developers-->
  <div class="modal fade title1" id="developers">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title" style="font-family:'typo' "><span style="color:orange">Developers</span></h4>
        </div>

        <div class="modal-body">
          <p>
          <div class="row">
            <div class="col-md-5">
              <a href="https://www.facebook.com/HashtagMasud/" target="_blank" style="<color:#202020; font-family:'typo' ; font-size:18px">Masud || Rouf</a>
              <h4 style="color:#202020; font-family:'typo' ;font-size:16px" class="title1">+8801760534597</h4>
              <h4 style="font-family:'typo'">admin@gmail.com</h4>
              <h4 style="font-family:'typo' ">City University, Bangladesh</h4>
            </div>
          </div>
          </p>
        </div>

      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  <!--Modal for admin login-->
  <div class="modal fade" id="login">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
          <h4 class="modal-title"><span style="color:orange;font-family:'typo' ">LOGIN</span></h4>
        </div>
        <div class="modal-body title1">
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
              <form role="form" method="post" action="admin.php?q=index.php">
                <div class="form-group">
                  <input type="text" name="uname" maxlength="20" placeholder="Admin user id" class="form-control" />
                </div>
                <div class="form-group">
                  <input type="password" name="password" maxlength="15" placeholder="Password" class="form-control" />
                </div>
                <div class="form-group" align="center">
                  <input type="submit" name="login" value="Login" class="btn btn-primary" />
                </div>
              </form>
            </div>
            <div class="col-md-3"></div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
  </div><!-- /.modal -->
  <!--footer end-->
</body>

</html>