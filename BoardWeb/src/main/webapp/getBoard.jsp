<%@ page import="com.springbook.biz.board.impl.BoardDAO" %>
<%@ page import="com.springbook.biz.board.BoardVO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	//1. �˻��� �Խñ� ��ȣ ����
	String seq = request.getParameter("seq");

	//2. DB ���� ó��
	BoardVO vo = new BoardVO();
	vo.setSeq(Integer.parseInt(seq));
	
	BoardDAO boardDAO = new BoardDAO();
	BoardVO board = boardDAO.getBoard(vo);
	
	//3. ���� ȭ�� ���� 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�� ��</title>
</head>
<body>
	<h1>�� �� </h1>
	<a href="logout_proc.jsp">Log-out</a>
	<hr>
	<form action="updateBoard_proc.jsp" method="post">
		<input name="seq" type="hidden" value="<%=board.getSeq() %>"/>
		<table border="1">
			<tr>
				<td bgcolor="orange" width="70">����</td>
				<td align="left">
					<input name="title" type="text" value="<%=board.getTitle()%>"/>
				</td>
			</tr> 
			<tr>
				<td bgcolor="orange">�ۼ���</td>
				<td align="left"><%=board.getWriter()%></td>
			</tr>
			<tr>  
				<td bgcolor="orange">����</td>
				<td align="left"><textarea name="content" cols="40" rows="10"><%=board.getContent() %></textarea></td>
			</tr>
			<tr>
				<td bgcolor="orange">�����</td>
				<td align="left"><%=board.getRegDate()%></td>
			</tr>
			<tr>
				<td bgcolor="orange">��ȸ��</td>
				<td align="left"><%=board.getCnt()%></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
				<input type="submit" value="�� ����"/>
				</td>
			</tr>
		</table>	
	</form>
	<hr>
	<a href="insertBoard.jsp">�� ���</a>&nbsp;&nbsp;&nbsp;
	<a href="deleteBoard_proc.jsp?seq=<%=board.getSeq()%>">�� ����</a>&nbsp;&nbsp;&nbsp;
	<a href="getBoardList.jsp">�� ���</a>&nbsp;&nbsp;&nbsp;
</body>
</html>