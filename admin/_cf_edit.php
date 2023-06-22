<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Edit Data CF</title>
</head>

<body>
<h3>Edit Nilai (CF<sub>Penyakit</sub>)</h3><hr />
<form id="form1" name="form1" method="post" action="update_cf.php" enctype="multipart/form-data"><div>
  <table width="450" border="0" align="center" cellpadding="4" cellspacing="1" bordercolor="#F0F0F0" bgcolor="#DBEAF5">
      <tr>
        <td colspan="2"><div align="center"><b>&nbsp;</b></div></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td>Certainty Term</td>
        <td><label>
          <input type="text" id="certainty_term" name="certainty_term" size="30" value="<?php echo $_GET['certainty_term'];?>" />
        </label><input name="idcf" type="hidden" value="<?php echo $_GET['kdubah'];?>" /></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td width="177">Nilai Interpretasi MD/MB</td>
        <td width="254"><input type="text" id="nilai_mbmd" name="nilai_mbmd" size="5" value="<?php echo $_GET['nilai_mbmd'];?>" /></td>
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