<%@ page language="java" contentType="text/html; charset=Shift-JIS"
    pageEncoding="Shift-JIS" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift-JIS">
<title>�g�b�v�y�[�W</title>


<script type="text/javascript">
function check(){
	if (document.getElementById("deckName").value == "") {
    	//�S�Ė����͂�������A�G���[���b�Z�[�W��\������
    	document.getElementById("errorMessage").innerHTML = "�������͂��Ă�������";
    	return false;
    }
}
</script>

</head>
<body>

<h1>YDSE</h1>

<div style="color:red;" id="errorMessage">
</div>
<form method="POST" action="/YDSE/serch" onSubmit="return check()">

<table border="0">
  <tr>
    <th align="right">�f�b�L���F</th>
    <td><input type="text" name="deckName" id="deckName" size="40" maxlength="20"/></td>
  </tr>
  <tr>
    <td align="center" colspan="2">
      <input type="reset" value="�N���A" />
      <input type="submit" value="����" />
    </td>
  </tr>
</table>
</form>


</body>
</html>