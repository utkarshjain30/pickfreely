<html>
<head>
<title> Non-Seamless-kit</title>
</head>
<body>
<center>

<?php include('Crypto.php')?>
<?php 

	error_reporting(0);
	
	$merchant_data='199292';
	$working_key='CD00C976A89F5717ABFF6FB07B705F7E';//Shared by CCAVENUES
	$access_code='AVQJ82GA72AO58JQOA';//Shared by CCAVENUES
	
	foreach ($_POST as $key => $value){
		$merchant_data.=$key.'='.$value.'&';
	}

	$encrypted_data=encrypt($merchant_data,$working_key); // Method for encrypting the data.

?>
<!-- https://secure.ccavenue.com/transaction/transaction.do?command=initiateTransaction -->
<!-- https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction -->
<form method="post" name="redirect" action="https://test.ccavenue.com/transaction/transaction.do?command=initiateTransaction"> 
<?php
echo "<input type=hidden name=encRequest value=$encrypted_data>";
echo "<input type=hidden name=access_code value=$access_code>";
?>
</form>
</center>
<script language='javascript'>document.redirect.submit();</script>
</body>
</html>

