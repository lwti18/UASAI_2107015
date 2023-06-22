<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit Data Relasi</title>
<script type="text/javascript" src="../jquery-1.10.2.js"></script>
<script type="text/javascript">
function konfirmasi(kd_penyakit){
	var kd_hapus=kd_penyakit;
	var url_str;
	url_str="_cf_hapus.php?kdhapus="+kd_hapus;
	var r=confirm("Yakin ingin menghapus data..?"+kd_hapus);
	if (r==true){   
		window.location=url_str;
		}else{
			//alert("no");
			}
	}
</script>
</head>

<body>
<h3>Edit Nilai (CF<sub>Penyakit</sub>)</h3>
<a href="haladmin.php?top=rule_kaidah_produksi.php">&laquo;&laquo;Kembali</a><hr />
<form id="form1" name="form1" method="post" action="_cf_simpan.php" enctype="multipart/form-data"><div>
  <table width="450" border="0" align="center" cellpadding="4" cellspacing="1" bordercolor="#F0F0F0" bgcolor="#DBEAF5">
      <tr>
        <td colspan="2"><div align="center"><b>Masukkan nilai dan jenis certainty term&nbsp;</b></div></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>Certainty Term</td>
        <td><input type="text" id="certainty_term" name="certainty_term" size="35" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="177">Nilai Interpretasi MD/MB</td>
        <td width="254"><input type="text" id="nilai_mbmd" name="nilai_mbmd" size="5" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Simpan" /></td>
      </tr>
    </table>
  </div>
</form>
<table id="tabel" width="700" cellpadding="3" cellspacing="0" border="1" align="center">
  <tr valign="top" bgcolor="#CCCC99">
  	<td width="50"><strong>No.</strong></td>
    <td width="291"><strong>Certainty Term</strong></td>
    <td width="150"><strong>Nilai Interpretasi<br />
    MD/MB</strong></td>
    <td width="78"><strong>Edit</strong></td>
    <td width="89"><strong>Hapus</strong></td>
  </tr>
  <?php
	include "../koneksi.php";
	$sql = "SELECT * FROM nilai_cf_penyakit ORDER BY idcf ASC";
	$qry = mysql_query($sql,$koneksi) or die ("SQL Error".mysql_error());
	$no=0;
	while ($data = mysql_fetch_array ($qry)) {
	$no++;
   ?>
  <tr valign="baseline">
 	<td><?php echo $no; ?> </td>
    <td><?php echo $data['certainty_term']; ?></td>
    <td><?php echo $data['nilai_mbmd']; ?></td>
    <td><a title="Edit Penyakit" href="_cf_edit.php?kdubah=<?php echo $data['idcf'];?>&certainty_term=<?php echo $data['certainty_term'];?>&nilai_mbmd=<?php echo $data['nilai_mbmd'];?>"><img src="image/edit.jpg" width="16" height="16" border="0"></a></td>
    <td><a title="Hapus Penyakit" style="cursor:pointer;" onclick="return konfirmasi('<?php echo $data['idcf'];?>');"><img src="image/hapus.jpg" width="16" height="16" ></a>
    </td>
  </tr>
  <?php
  } ?>
</table>
</body>
</html>