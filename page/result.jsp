<%@ page language="java" contentType="text/html; charset=Shift-JIS"
    pageEncoding="Shift-JIS" import="java.util.*, vo.DeckVO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%!
ArrayList<DeckVO> deckList = new ArrayList<DeckVO>();
%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=Shift-JIS">
<title>��������</title>


</head>
<body>

<%

	deckList = (ArrayList<DeckVO>)request.getAttribute("deck");
	out.print("�������ʂ�"+ deckList.size() +"���ł�</br>");

%>

<table border=1>

<%
	for(int i=0; i<deckList.size(); i++){

		DeckVO deck = deckList.get(i);
		out.print("<tr><td>"+deck.getDeckName()+"</td></tr>");
	}
%>

</table>


<a href ="top">�g�b�v��</a>

</body>
</html>