<?php
error_reporting(E_ALL ^ E_DEPRECATED);
$server='localhost';
$user='root';
$pasword='';
$namadb='pakar';

$koneksi=mysqli_connect($server,$user,$pasword);
mysqli_select_db($koneksi,$namadb)or die("<center color='red'><strong>" .mysql_error()."</strong></center>"
);
// $host="localhost";
// $user="root";
// $pass="";
// $dbName="pakar";
// $koneksi=mysqli_connect($host,$user,$pass);
// $db=mysqli_select_db($dbName,$koneksi)or die("<center color='red'><strong>" .mysqli_error()."</strong></center>"
// );
if(!$koneksi){
	echo"<center><font color='red'><strong>Koneksi Gagal...!</strong></font></center>";
	echo"<center><font color='red'><strong>DATABASE $dbName tidak ditemukan...!</strong></font></center>";
	}
?>