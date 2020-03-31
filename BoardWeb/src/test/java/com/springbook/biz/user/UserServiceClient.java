package com.springbook.biz.user;

import java.util.List;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import com.springbook.biz.board.BoardService;
import com.springbook.biz.board.BoardVO;
import com.springbook.biz.user.UserService;
import com.springbook.biz.user.UserVO;

public class UserServiceClient {
	
	
	public static void main(String[] args) {
		//1.launch Spring container
		AbstractApplicationContext container = 
					new GenericXmlApplicationContext("applicationContext.xml");
	
		//2. Lookup BoardServiceImpl object from spring container
		UserService userService = (UserService)container.getBean("userService");

		//3. test insert board
		UserVO vo = new UserVO();
		vo.setId("test");
		vo.setPassword("test123");
		
		UserVO user = userService.getUser(vo);
		if (user!=null) {
			System.out.println(user.getName()+"님 환영합니다. ");
		}else {
			System.out.println("로그인 실패");
		}
		
		
		//4. end Spring container
		container.close();
	}

}
