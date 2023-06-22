<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit Data Relasi</title>
</head>

<body>
<h3>Edit Nilai (CF<sub>Gejala</sub>)</h3><hr />
<form id="form1" name="form1" method="post" action="update_cfg.php" enctype="multipart/form-data"><div>
  <table width="750" border="0" align="center" cellpadding="4" cellspacing="1" bordercolor="#F0F0F0" bgcolor="#DBEAF5">
      <tr>
        <td colspan="2"><div align="center"><b>&nbsp;</b></div></td>
      </tr>
      <?php
		$id_relasi=$_GET['id_relasi'];
        $str_CF=mysql_query("SELECT * FROM relasi,penyakit_solusi,gejala WHERE relasi.id_relasi='$id_relasi' AND relasi.kd_penyakit=penyakit_solusi.kd_penyakit AND relasi.kd_gejala=gejala.kd_gejala ");
		$data_CF=mysql_fetch_array($str_CF);
		?>
      <tr bgcolor="#FFFFFF">
        <td>Kd Penyakit</td>
        <td><label>
          <input type="text" id="nilai_mbmd2" name="nilai_mbmd2" size="30" value="<?php echo $data_CF['nama_penyakit'];?>" />
          <?php $id_relasi=$_GET['id_relasi'];?>
        </label><input name="id_relasi" type="hidden" value="<?php echo $id_relasi;?>" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="177">Gejala</td>
        
        <td width="254"><input type="text" id="nilai_mbmd" name="nilai_mbmd" size="100" value="<?php echo $data_CF['gejala'];?>" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>(CF<sub>Penyakit</sub>)</td>
        <td><input type="text" id="cf_p" name="cf_p" size="5" value="<?php echo $data_CF['cf_p'];?>" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>(CF<sub>Gejala</sub>)</td>
        <td><input type="text" id="cf_g" name="cf_g" size="5" value="<?php echo $data_CF['cf_g'];?>" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Update" /><input type="button" value="Kembali" onclick="self.history.back();" /></td>
      </tr>
    </table>
  </div>
</form>

</body>
</html>