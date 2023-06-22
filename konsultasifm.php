<html>
<head>
<title>Form Utama Penelusuran</title>
<script type="text/javascript" src="jquery-1.2.6.pack.js"></script>
<script type="text/javascript">
$(document).ready(function()
		{
			$("form").submit(function()
			{
				if (!isCheckedById("gejala"))
				{
					alert ("Anda Belum Memilih Gejala Apapun\nSilahkan Pilih Gejala..!");
					return false;
				}else{				
					return true; //submit the form
					}				
			});
			function isCheckedById(id)
			{
				var checked = $("input[@id="+id+"]:checked").length;
				if (checked == 0)
				{
					return false;
				}
				else
				{
					return true;
				}
			}
			// pilih bobot
			function isCheckedById2(id)
			{
				var checked = $("option[@id="+id+"]:checked").length;
				if (checked =="")
				{
					return false;
				}
				else
				{
					return true;
				}
			}
			//--
		});
</script>
<style type="text/css">
ul {list-style:none;}
li {line-height:-6px; font-weight:normal; color:#09F;}
</style>
</head>
<body>
<h2 class="art-postheader">
<div class="konten"><form  method="post" name="form" target="_self" action="?top=konsulperiksa.php">
  <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" bordercolor="#FFFFFF">
    <tr> 
      <td colspan="2"><div align="center"><strong>FORM DIAGNOSA PENYAKIT Diabete Melitus</strong></div></td>
    </tr>
    <tr align="center"> 
      <td colspan="2" align="center"><center><strong>Silahkan Pilih Gejala Yang Dialami Pasien</strong></center></td></tr>
	<tr><td width="504" >
    <ul style="list-style:none; font-family:Courier New;">
    <?php 
	include "koneksi.php";
	$kosong_tmp_penyakit=mysqli_query($koneksi,"DELETE FROM tmp_penyakit");
	$query=mysqli_query($koneksi,"SELECT * FROM gejala") or die("Query Error..!" .mysql_error);
	while ($row=mysqli_fetch_array($query)){
	?>
    	<li><input type="checkbox" name="gejala[]" id="gejala" value="<?php echo $row['kd_gejala'];?>"><?php echo $row['kd_gejala']."|". $row['gejala'];?></li>
		 <?php  } ?>
         </ul>
       </td> </tr>
	<tr>  <td width="504" align="right" bgcolor="#FFFFFF"><input style="border:1px solid #069; padding:2px 3px 2px 8px; cursor:pointer;" type="submit" name="Submit" value="Proses Diagnosa">
	  <input style="border:1px solid #069; padding:2px 3px 2px 8px; cursor:pointer;" type="reset" value="Reset">&nbsp;&nbsp;&nbsp;</td>
    </tr>
  </table>
</form></div>
</body>
</html>
