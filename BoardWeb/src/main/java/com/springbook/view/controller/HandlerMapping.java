package com.springbook.view.controller;

import java.util.HashMap;
import java.util.Map;


//Controller 객체 저장 
//클라이언트의 요청이 들어오면 요청을 처리할 특정 Controller를 검색하는 기능 
import com.springbook.biz.user.LoginController;

public class HandlerMapping {
	
	private Map<String, Controller> mappings; 
	
	public HandlerMapping() {
		mappings = new HashMap<String, Controller>(); 
		mappings.put("/login.do", new LoginController());
	}
	
	public Controller getController(String path) {
		return mappings.get(path);
	}
	
	

}
