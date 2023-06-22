<?php 
include "koneksi.php";
# Baca variabel Form (If Register Global ON)
$TxtNama 	= $_REQUEST['TxtNama'];
$RbKelamin 	= $_POST['cbojk'];
$TxtAlamat 	= $_REQUEST['TxtAlamat'];
$umur=$_POST['umur'];
$email=$_POST['textemail'];
$NOIP = $_SERVER['REMOTE_ADDR'];
# Validasi Form

    $NOIP = $_SERVER['REMOTE_ADDR'];		  
	$sql  = " INSERT INTO pasien(nama,kelamin,umur, alamat, email, tanggal) 
		 	  VALUES ('$TxtNama','$RbKelamin', '$umur','$TxtAlamat', '$email',NOW())";
	mysqli_query($koneksi,$sql)
	//mysql_query($sql) 
		  or die ("SQL Error 2".mysql_error());
	
	$sqlhapus = "DELETE FROM  diagnosa ";
	mysqli_query($koneksi, $sqlhapus) or die ("SQL Error 1".mysql_error());
	//mysql_query($sqlhapus, $koneksi) or die ("SQL Error 1".mysql_error());
	
	$sqlhapus2 = "DELETE FROM tmp_analisa ";
	mysqli_query($koneksi, $sqlhapus2) or die ("SQL Error 2".mysql_error());
	//mysql_query($sqlhapus2, $koneksi) or die ("SQL Error 2".mysql_error());
			
	$sqlhapus3 = "DELETE FROM tmp_gejala ";
	mysqli_query($koneksi, $sqlhapus3) or die ("SQL Error 3".mysql_error());
	//mysql_query($sqlhapus3, $koneksi) or die ("SQL Error 3".mysql_error());
#	$sqlhapus4 = "DELETE FROM analisa_hasil WHERE noip='$NOIP'";
#	mysql_query($sqlhapus4, $koneksi) or die ("SQL Error 4".mysql_error());	
	echo "<meta http-equiv='refresh' content='0; url=index.php?top=konsultasifm.php'>";

?>
	