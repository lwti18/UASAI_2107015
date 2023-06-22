<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script type="text/javascript">
function validasi(form){
	if(form.kd_gejala.value==""){
		alert("Masukkan kode gejala..!");
		form.kd_gejala.focus(); return false;
		}else if(form.gejala.value==""){
		alert("Masukkan gejala..!");
		form.gejala.focus(); return false;	
		}else if(form.txtkdpenyakit.value==0){
			alert("Masukkan penyakit..!"); return false;
			form.txtkdpenyakit.focus();
			}
		form.submit();
	}
function konfirmasi(kd_gejala){
	var kd_hapus=kd_gejala;
	var url_str;
	var aksi="gejala";
	//alert(kd_hapus);
	url_str="hpsgejala.php?kdhapus="+kd_hapus+"&aksi="+aksi;
	var r=confirm("Yakin ingin menghapus data..?"+kd_hapus);
	if (r==true){   
		window.location=url_str;
		}else{
			//alert("no");
			}
	}
function hapus (xkd_gejala){
	var kd=xkd_gejala
	alert(kd);
	}
</script>
</head>
<body>
<h2>Data Gejala-gejala </h2><hr>
<form name="form3" onSubmit="return validasi(this);" method="post" action="simpangejala.php">
<table width="700" border="0" align="center">
  <tr>
    <td colspan="3"><div align="center"><strong>Input Data Gejala</strong></div></td>
  </tr>
  <tr>
    <td width="110">Kd gejala </td>
    <td width="8">:</td>
    <td width="568">
      <input name="kd_gejala" type="text" id="kd_gejala" size="4" maxlength="4">
    </td>
  </tr>
  <tr>
    <td> Gejala </td>
    <td>:</td>
    <td>
      <textarea name="gejala" cols="50" id="gejala"></textarea>
    </td>
  </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>
        <input name="simpan" type="submit" id="simpan" value="Simpan">
        <input type="reset" name="reset" value="Reset">
      </td>
    </tr>
</table>
</form>
<br>
<table id="tabel" width="100%" cellpadding="3" cellspacing="0" border="1" align="center">
  <tr valign="top" style="background:linear-gradient(to top, #9CF, #9FF);">
  	<td width="30"><strong>No.</strong></td>
    <td width="80"><strong>Kode Gejala</strong></td>
    <td width="200"><strong>Gejala</strong></td>
    <td width="48"><strong>Edit</strong></td>
    <td width="53"><strong>Hapus</strong></td>
  </tr>
  <?php
	//include "inc.connect/connect.php";
	//include "../librari/inc.koneksidb.php";
	include "../koneksi.php";
	$sql = "SELECT * FROM gejala ORDER BY kd_gejala";
  $qry = mysqli_query($koneksi, $sql) or die ("SQL Error".mysql_error());
	//$qry = mysql_query($sql,$koneksi) or die ("SQL Error".mysql_error());
	$no=0;
  while ($data = mysqli_fetch_array ($qry)) {
	//while ($data = mysql_fetch_array ($qry)) {
	$no++;
   ?>
  <tr valign="baseline">
 	<td><?php echo $no; ?> </td>
    <td><?php echo $data['kd_gejala']; ?></td>
    <td><?php echo $data['gejala']; ?></td>
    <td><a title="Edit Penyakit" href="edgejala.php?kdubah=<?php echo $data['kd_gejala'];?>"><img src="image/edit.jpg" width="16" height="16" border="0"></a></td>
    <td><a title="Hapus Penyakit" style="cursor:pointer;" onclick="return konfirmasi('<?php echo $data['kd_gejala'];?>');"><img src="image/hapus.jpg" width="16" height="16" ></a>
    </td>
  </tr>
  <?php
  } ?>
</table>
<p>&nbsp; </p>
</body>
</html>