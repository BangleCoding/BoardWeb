package com.springbook.view.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		process(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("EUC-KR");
		process(request,response);
	}

	
	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException{
		
		//1.클라이언트의 요청 path 정보를 추출한다.
		String uri = request.getRequestURI(); 
		//뒤에서부터 /에 해당하는 글자를 찾아서 거기부터 잘라라. 라는 뜻. 
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(path);
		
		//2. 클라이언트의 요청 path에 따라 적절히 분기처리 한다. 
		if (path.equals("/login.do")) {
			System.out.println("로그인 처리");
		} else if(path.equals("/logout.do")) {
			System.out.println("로그아웃 처리");
		} else if(path.equals("/insertBoard.do")) {
			System.out.println("게시글 등록 처리");
		} else if(path.equals("/updateBoard.do")) {
			System.out.println("게시글 수정 처리");
		} else if(path.equals("/deleteBoard.do")) {
			System.out.println("게시글 삭제 처리");
		} else if(path.equals("/getBoard.do")) {
			System.out.println("게시글 상세 조회 처리");
		} else if(path.equals("/getBoardList.do")) {
			System.out.println("게시글 목록 검색 처리");
		}
	}
}