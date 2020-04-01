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
	<center>
		<h1>�� �� </h1>
		<a href="logout_proc.jsp">Log-out</a>
		<hr>
		<form action="updateBoard_proc.jsp" cellspacing="0">
			<table>
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
					<td></td>
					<td></td>
				</tr>
			</table>	
		</form>
	</center>
</body>
</html>