<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Proses Diagnosa</title>
<style type="text/css">
p{ padding-left:2px; text-indent:0px;}
</style>
</head>
<body>
<div class="konten">
<?php
include "koneksi.php";
?>
<table style="font-family:Arial, Helvetica, sans-serif; font-size:11pt;" width="750" border="0" bgcolor="#0099FF" cellspacing="1" cellpadding="4" bordercolor="#0099FF">
  <tr font-size:15px; >
    <td height="32" colspan="2"><a style="color:#CF0; font-weight:bold;" href="proses-diagnosa.php?top=konsultasifm.php">&laquo;&laquo;Diagnosa Kembali</a> | 
<a style="color:#CF0; font-weight:bold;" href="index.php?top=pasien_add_fm.php">Kembali</a></td>
    </tr>
  <tr bgcolor="#ffffff">
    <td height="32" colspan="2"  style="color:#C60;">
<div style="width:220px; float:left;">
      <?php
    include "koneksi.php";
	echo "<font>IDENTITAS PEMAKAI</font><hr>";
	$query_pasien=mysqli_query($koneksi, "SELECT * FROM pasien ORDER BY id_pasien  DESC");
	$data_pasien=mysqli_fetch_array($query_pasien);
	$id_pasien=$data_pasien['id_pasien'];
	echo "Nama : ". $data_pasien['nama'] . "<br>"; 
	echo "Jenis Kelamin : ". $data_pasien['kelamin']. "<br>"; 
	echo "Alamat : ". $data_pasien['alamat']. "<br>"; 
	echo "Umur : ". $data_pasien['umur']. "<br>";
	echo "Email : ". $data_pasien['email']. "<br>";
	?>
</div>
<div style="width:500px; float:right;">
      <?php
	  echo "<font >GEJALA YANG DIMASUKKAN</font><hr>";
	$query_gejala_input=mysqli_query($koneksi, "SELECT gejala.gejala AS namagejala,tmp_gejala.kd_gejala FROM gejala,tmp_gejala WHERE tmp_gejala.kd_gejala=gejala.kd_gejala");
	$nogejala=0;
	while($row_gejala_input=mysqli_fetch_array($query_gejala_input)){
		$nogejala++;
		echo $nogejala. ".[$row_gejala_input[kd_gejala]]". $row_gejala_input['namagejala']. "<br>";
		}
	?>
</div>    
</td>
    </tr>
  <tr bgcolor="#ffffff">
    <td height="32" colspan="2"  style="color:#039;">    <p>Perhitungan Manual Nilai CF<br />
      CF[h,e] = MB[h,e] - MD[h,e]<br />
      Dengan :<br />
      CF[h,e] = Faktor Kepastian<br />
      MB[h,e] = Ukuran Kepercayaan terhadap<br />
      Hipotesis h<br />
      MD[h,e] = Ukuran Ketidakpercayaan</p></td>
    </tr>
  <tr bgcolor="#FFFFFF">
    <td width="400" ><span style="color:#F33;"><strong>Hasil Diagnosa Berdasarkan Proses Hitung Metode Certainty Factor :</strong></span><br />
    <?php
	$arrPenyakit=array(); $arrCFKombinasiP=array(); $arrCFKombinasiG=array();
	$arrCFGfirst=array(); $arrCFHasil[]=array(); 
    //proses perthitungan nilai Certainty factor (CF)
	//$strP_Relasi=mysql_query("SELECT * FROM relasi GROUP BY kd_penyakit ORDER BY kd_penyakit ASC ");
	$strP_Relasi=mysqli_query($koneksi, "SELECT * FROM relasi WHERE kd_gejala IN (select kd_gejala FROM tmp_gejala) GROUP BY kd_penyakit");
	while ($dataP_Relasi=mysqli_fetch_array($strP_Relasi)){
		$arrPenyakit[]=$dataP_Relasi['kd_penyakit']; 
	echo "<hr>";
	echo "Nama Penyakit = ".$dataP_Relasi['kd_penyakit']."(CF<sub>Penyakit</sub>)=" .$dataP_Relasi['cf_p']."<br>";
	//generate data gejala pada tabel relasi
	$kd_penyakitR=$dataP_Relasi['kd_penyakit'];
	$str_Gejala_R=mysqli_query($koneksi, "SELECT * FROM relasi,gejala WHERE relasi.kd_penyakit='$kd_penyakitR' AND relasi.kd_gejala=gejala.kd_gejala ORDER BY relasi.kd_gejala ASC ");
	$Egejala=1;
		while($dataGejala_R=mysqli_fetch_array($str_Gejala_R)){
			$cf_Gejala=$dataGejala_R['cf_g'];
			$cf_Penyakit=$dataP_Relasi['cf_p'];
			echo "Nilai CF (gejala) <strong>$dataGejala_R[kd_gejala] ($dataGejala_R[gejala])	 = ".$dataGejala_R['cf_g']."</strong><br>";
			echo "<strong>MB(h,E$Egejala) = ((CF<sub>Gejala</sub>)-(CF<sub>Penyakit</sub>))/(1-(CF<sub>Penyakit</sub>))</strong><br>";
			echo "=( $cf_Gejala-$cf_Penyakit ) / ( 1-$cf_Penyakit ) <br>";
			$CFG=$cf_Gejala-$cf_Penyakit; $CFP=1-$cf_Penyakit;
			echo "=$CFG / $CFP<br>"; $CFGP=$CFG/$CFP;
			echo "=$CFGP<br>";
			echo "MD(h,E1) =( $cf_Penyakit-$cf_Penyakit ) / ( 0-$cf_Penyakit ) <br>";
			$CFPP=$cf_Penyakit-$cf_Penyakit; $nol_CFP=0-$cf_Penyakit;
			$hasilbagiCFPP=$CFPP/$nol_CFP;
			echo "=$hasilbagiCFPP; <br>";
			echo "CF(h,E1) = MB(h,E1)-MD(h,E1)<br>";
			echo "=$CFGP-0<br>";
			$CF=$CFGP-0;
			echo "=$CF<br>";
			$arrCFKombinasiG[$dataGejala_R['kd_gejala']]=$CF;
			$arrCFGfirst[]=$CF;
			}$Egejala=$Egejala+1;
			echo "CFkombinasi (CF1, CF2,..., CFn) = <br>";
			echo "CF<sub>kombinasi</sub>="; foreach($arrCFKombinasiG as $cfG){
				echo substr($cfG,0,7)."+";
				};
				$cfAkhir=1-$arrCFGfirst[0];
			echo "(1-".substr($arrCFGfirst[0],0,7); echo")<br> "; //echo substr($cfAkhir,0,7);
			$gSum=$arrCFKombinasiP[$kd_penyakitR]=array_sum($arrCFKombinasiG); 
echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= ";
			echo $gSum." * ".substr($cfAkhir,0,7)."<br>";
			$nilaiCF=$gSum*$cfAkhir; 
echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;= ";
			echo $nilaiCF; $arrCFHasil[$kd_penyakitR]=$nilaiCF;
			unset($arrCFKombinasiG); unset($arrCFGfirst);
	}
	?>
    </td>
    <td valign="top" width="350"><?php
    //menampilkan data penyakit yang di alami
	echo "<font color='blue'>Berdasarkan Gejala yang di alami maka kemungkinan pasien menderita penyakit Diabetes Melitus berikut : </font><hr>";
	$arrNhasil=array_slice($arrCFHasil,1);
	$totalCF=array_sum($arrNhasil); 
	foreach($arrNhasil as $kdP=>$Np){
		$persen=($Np/$totalCF)*100; 
		if($persen=="100"){ 
		$sqlPHasil=mysql_query("SELECT * FROM penyakit_solusi WHERE kd_penyakit='$kdP' ");
		while($dataPHasil=mysql_fetch_array($sqlPHasil)){
			echo "<p style='font-weight:bold; color:blue;'>Diabetes Melitus Mengalami Penyakit : $dataPHasil[nama_penyakit] &nbsp;(persentase=100%)</p>";
			echo "<p style='font-size:9pt;'><span style='font-weight:bold; color:blue;'>Definisi Penyakit :</span> $dataPHasil[definisi]</p>";
			echo "<p style='font-size:9pt;'><span style='font-weight:bold; color:blue;'>Solusi pengobatanya:</span> $dataPHasil[solusi]</p>";
			}
			$persenH=substr($persen,0,5);
			$strHasil=mysql_query("INSERT INTO analisa_hasil (id_pasien,kd_penyakit,persentase,tanggal) VALUES ('$id_pasien','$kdP','$persenH',NOW() ) ")or die(mysql_error());
		}else{
			//jika tidak 100%
			$sqlPHasil=mysqli_query($koneksi, "SELECT * FROM penyakit_solusi WHERE kd_penyakit='$kdP' ");
			while($dataPHasil=mysqli_fetch_array($sqlPHasil)){
			echo "<p style='font-weight:bold; color:blue;'>Diabetes Melitus Mengalami Penyakit : $dataPHasil[nama_penyakit] &nbsp;(sebesar=".substr($persen,0,5)."%)</p>";
			echo "<p style='font-size:9pt;'><span style='font-weight:bold; color:blue;'>Definisi Penyakit :</span> $dataPHasil[definisi]</p>";
			echo "<p style='font-size:9pt;'><span style='font-weight:bold; color:blue;'>Solusi pengobatanya:</span> $dataPHasil[solusi]</p>";
			$persenH=substr($persen,0,5);
			$strHasil=mysqli_query($koneksi, "INSERT INTO analisa_hasil (id_pasien,kd_penyakit,persentase,tanggal) VALUES ('$id_pasien','$kdP','$persenH',NOW() ) ")or die(mysql_error());
			}
			}
		$persen=0;
		}
	$totalCF=array_sum($arrCFHasil);
	?></td>
  </tr>
  <tr bgcolor="#FFFFFF">
    <td><strong>&nbsp;</strong><br />
    </td>
    <td>&nbsp;</td>
  </tr>
</table>
<br />
<br />
</div>
</body>
</html>
