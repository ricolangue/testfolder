<?php
defined('ACCESSIBLE') or exit('No direct script access allowed');
@session_start();

$formname = 'Enrollment Form';
$prompt_message = '<span class="required-info">* Required Information</span>';
if ($_POST) {

	$result_recaptcha = Main::recaptcha($recaptcha_privite, $_POST);

	if (
		empty($_POST['First_Name']) ||
		empty($_POST['Last_Name']) ||
		empty($_POST['Address']) ||
		empty($_POST['City']) ||
		empty($_POST['Zip_Code']) ||
		empty($_POST['Phone_Number']) ||
		empty($_POST['Email_Address'])
	) {


		$asterisk = '<span style="color:#FF0000; font-weight:bold;">*&nbsp;</span>';
		$prompt_message = '<div id="error-msg"><div class="message"><span>Required Fields are empty</span><br/><p class="error-close">x</p></div></div>';
	} else if (!preg_match("/^[_\.0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]+\.)+[a-zA-Z]{2,6}$/i", stripslashes(trim($_POST['Email_Address'])))) {
		$prompt_message = '<div id="recaptcha-error"><div class="message"><span>Please enter a valid email address</span><br/><p class="rclose">x</p></div></div>';
	} else if (!$result_recaptcha->success) {
		$prompt_message = '<div id="recaptcha-error"><div class="message"><span>Invalid <br>Recaptcha</span><p class="rclose">x</p></div></div>';
	} else {

		if (MAIL_TYPE == 1) {
			$formdisclaimer = '<div style="position: relative; top: 10px; background: #eef5f8; padding: 15px 20px; border-radius: 5px; width: 660px; margin: 0 auto; text-align: center; font-family: Poppins,sans-serif; border: 1px solid #f9f9f9;  color: #6a6a6a !important;">  
					<span style="border-radius: 50%; height: 19px; display: inline-block; color: #f49d2c; font-size: 15px;   text-align: center;"></span> Please do not reply to this email. This is only a notification from your website online forms. 
					<br>To contact the person who filled out your online form, kindly use the email which is inside the form below.</div>';
		} else
			$formdisclaimer = '';

		$body = '
		
		<div class="form_table" style="width:700px; height:auto; font-size:12px; color:#6a6a6a; letter-spacing:1px; margin: 0 auto; font-family: Poppins,sans-serif;">' . $formdisclaimer . '
		<div class="container" style="background: #fff; margin-top: 30px; font-family: Poppins,sans-serif; color:#6a6a6a; box-shadow: 10px 10px 31px -7px rgba(38,38,38,0.11); -webkit-box-shadow: 10px 10px 31px -7px rgba(38,38,38,0.11); -moz-box-shadow: 10px 10px 31px -7px rgba(38,38,38,0.11);  border-radius: 5px 5px 5px 5px; border: 1px solid #eee;">
			<div class="header" style="background: #a3c7d6; padding: 30px; border-radius: 5px 5px 0px 0px; ">
				<div align="left" style="font-size:22px; font-family: Poppins,sans-serif; color:#fff; font-weight: 900;">' . $formname . '</div>
				<div align="left" style=" color: #11465E;  font-size:19px; font-family: Poppins,sans-serif;  font-style: italic; margin-top: 6px; font-weight: 900;">' . COMP_NAME . '</div>
			</div>
		<div style="padding: 13px 30px 25px 30px;">
		<table border="0" cellpadding="0" cellspacing="0" width="100%" align="center" style="font-family: Poppins,sans-serif;font-size:14px; padding-bottom: 20px;"> 

					';

		foreach ($_POST as $key => $value) {
			if ($key == 'secode')
				continue;
			elseif ($key == 'submit')
				continue;
			elseif ($key == 'g-recaptcha-response')
				continue;

			if (!empty($value)) {
				$key2 = str_replace('_', ' ', $key);
				if ($value == ':') {
					$body .= ' <tr margin-bottom="10px"> <td colspan="5" height="28" class="OFDPHeading" width="100%" style=" background:#F0F0F0; margin-bottom:5px;"><b style="padding-left: 4px;">' . $key2 . '</b></td></tr>';
				}else if($key == "Privacy_Policy"){
					$body .= '<tr><td colspan="3" line-height:30px">

					<input type="checkbox" checked disabled /> By submitting this form you agree to the terms of the Privacy Policy.

					</td></tr>';
				} else {
					$body .= '<tr><td class="Values1"colspan="2" height="28" align="left" width="40%" padding="100" style="line-height: normal; padding-left: 4px;text-justify: inter-word; word-wrap: anywhere; padding-right: 28px;">
								<span style="position:relative !important;"><b>' . $key2 . '</b></span >:</td> <td class="Values2"colspan="2" height="28" align="left" width="50%" padding="10" style="line-height: normal; word-wrap: anywhere; "><span style="margin-top: 7px; position:relative;margin-left: 7px; border-collapse: collapse; display: inline-block;margin-bottom: 5px;margin-right: 7px;">' . htmlspecialchars(trim($value), ENT_QUOTES) . '</span> </td></tr>';
				}
			}
		}
		$body .= '
					</table>
					</div>
					</div>';

		//echo $body; exit;

		// save data form on database
		$subject = $formname;
		$attachments = array();

		//name of sender
		$name = $_POST['First_Name'] . ' ' . $_POST['Last_Name'];
		$result = insertDB($name, $subject, $body, $attachments);

		$parameter = array(
			'body' => $body,
			'from' => $from_email,
			'from_name' => $from_name,
			'to' => $to_email,
			'subject' => 'New Message Notification',
			'attachment' => $attachments,
			'comb' => true
		);

		$prompt_message = send_email($parameter);
		unset($_POST);

	}

}
/*************declaration starts here************/
$state = array('Please select state.', 'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'District Of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Puerto Rico', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virgin Islands', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming');

?>
<!DOCTYPE html>
<html class="no-js" lang="en-US">

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<title>
		<?php echo $formname; ?>
	</title>

	<link rel="stylesheet" href="../assets/style.min.css?ver23asas">
	<link rel="stylesheet" href="../assets/css/font-awesome.min.css">
	<link rel="stylesheet" href="../assets/css/media.min.css?ver24as">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/dd.min.css" />
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css">
	<link rel="stylesheet" href="../assets/css/datepicker.min.css">
	<link rel="stylesheet" href="../assets/css/jquery.datepick.min.css" type="text/css" media="screen" />

	<link rel="stylesheet" type="text/css" href="../assets/assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../assets/dist/bootstrap-clockpicker.min.css">
	<link rel="stylesheet" type="text/css" href="../assets/assets/css/github.min.css">

	<link rel="stylesheet" href="../assets/css/proweaverPhone.css?ver=<?php echo time(); ?>">
	<link rel="stylesheet" href="../assets/css/flag.min.css" type="text/css" />

	<script src='https://www.google.com/recaptcha/api.js'></script>
</head>

<body>
	<div class="clearfix">
		<div class="wrapper">
			<div id="contact_us_form_1" class="template_form">
				<div class="form_frame_b">
					<div class="form_content">
						<?php if ($testform): ?>
							<div class="test-mode">
								<div class="ar"><i class="fas fa-info-circle"></i><span>You are in test mode!</span></div>
								<button class="toggle-labels" title="Hide Labels">
									<i class="fas fa-eye"></i> </button>
							</div>
						<?php endif; ?>

						<form id="submitform" name="contact" method="post" enctype="multipart/form-data" action="">
							<?php echo $prompt_message; ?>

							<div class="form_box">
								<div class="form_box_col2">
									<?php
									// @param field name, required, class, replaceholder, rename, id, attrib, value
									$input->masterfield('First Name', '*', 'form_field');

									// @param field name, required, class, replaceholder, rename, id, attrib, value
									$input->masterfield('Last Name', '*', 'form_field');
									?>
								</div>
							</div>


							<div class="form_box">
								<div class="form_box_col1">
									<?php
									// @param field name, required, class, replaceholder, rename, id, attrib, value
									$input->masterfield('Address', '*', 'form_field');
									?>
								</div>
							</div>

							<div class="form_box">
								<div class="form_box_col3">
									<div class="group">
										<?php
										$input->label('City', '*');
										// @param field name, class, id and attribute
										$input->fields('City', 'form_field', 'City', 'placeholder="Enter city here"');
										?>
									</div>
									<div class="group">
										<?php
										// @param label-name, if required
										$input->label('State', '');
										// @param field name, class, id and attribute
										$input->select('State', 'form_field', $state);
										?>
									</div>

									<div class="group">
										<?php
										// @param label-name, if required
										$input->label('Zip Code', '*');
										// @param field name, class, id and attribute
										$input->fields('Zip_Code', 'form_field', 'Zip_Code', 'placeholder="Enter zip code here"');
										?>
									</div>
								</div>
							</div>


							<div class="form_box_col2">
								<div class="group">
									<?php
									$input->label('Phone Number', '*');
									// @param field name, class, id and attribute
									$input->phoneInput('Phone_Number', 'form_field', 'Phone_Number', 'placeholder="Enter number here"');
									?>
								</div>
								<div class="group">
									<?php
									$input->label('Email Address', '*');
									// @param field name, class, id and attribute
									$input->fields('Email_Address', 'form_field', 'Email_Address', 'placeholder="example@domain.com"');
									?>
								</div>
							</div>

							<div class="disclaimer">
							<p><input type="checkbox" name="Privacy_Policy" style="-webkit-appearance:checkbox" /> <b>By submitting this form you agree to the terms of the <a href="<?php echo get_home_url();?>/privacy-policy" target="_blank">Privacy Policy</a>.</b></p>
							</div>


							<div class="form_box5 secode_box">
								<div class="inner_form_box1 recapBtn">
									<div class="g-recaptcha" data-sitekey="<?php echo $recaptcha_sitekey; ?>"></div>
									<div class="btn-submit"><input type="submit" class="form_button" value="SUBMIT" />
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<?php $input->phone(true); ?>
	<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
	<script type="text/javascript" src="../assets/js/city_state.min.js"></script>
	<script type="text/javascript" src="../assets/js/addressFunctionality.min.js"></script>
	<script type="text/javascript" src="../assets/assets/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../assets/dist/jquery-clockpicker-customized.js"></script>
	<script type="text/javascript" src="../assets/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="../assets/js/jquery.datepick.min.js"></script>
	<script src="../assets/js/datepicker.js"></script>
	<script src="../assets/js/plugins.min.js"></script>
	<script src="../assets/js/jquery.mask.min.js"></script>
	<script src="../assets/js/proweaverPhone.js"></script>


	<script type="text/javascript">
		$(document).ready(function () {
			// validate signup form on keyup and submit
			$("#submitform").validate({
				rules: {
					First_Name: "required",
					Last_Name: "required",
					Address: "required",
					City: "required",
					Privacy_Policy: "required",
					Zip_Code: "required",
					Phone_Number: "required",
					Email_Address: {
						required: true,
						email: true
					},
				},
				messages: {
					First_Name: "",
					Last_Name: "",
					Address: "",
					City: "",
					Privacy_Policy: '',
					Zip_Code: "",
					Phone_Number: "",
					Email_Address: ""
				}
			});

			$("#submitform").submit(function () {
				if ($(this).valid()) {
					$('.load_holder').css('display', 'block');
					self.parent.$('html, body').animate(
						{ scrollTop: self.parent.$('#myframe').offset().top },
						500
					);
				}
				if (grecaptcha.getResponse() == "") {
					var $recaptcha = document.querySelector('#g-recaptcha-response');
					$recaptcha.setAttribute("required", "required");
					$('.g-recaptcha').addClass('errors').attr('id', 'recaptcha');
				}
			});

			// $("input").keypress(function (event) {
			// 	if (grecaptcha.getResponse() == "") {
			// 		var $recaptcha = document.querySelector('#g-recaptcha-response');
			// 		$recaptcha.setAttribute("required", "required");
			// 	}
			// });

		});
	</script>
</body>

</html>