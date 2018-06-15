package com.dolba.security.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.stereotype.Component;


/**
 * springSecurity������������ authentication-failure-handler-ref=""�� �ۼ��س�����
 * ����(�α���) �ɶ� �����ϰ� �Ǹ� MemberAuthenticationFailureHandler Ŭ������
 * onAuthenticationFailure()�޼ҵ尡 �ڵ� ȣ��ȴ�.
 * */
@Component //id= memberAuthenticationFailureHandler
public class MemberAuthenticationFailureHandler implements AuthenticationFailureHandler{
	
	public MemberAuthenticationFailureHandler() {}
	
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException ex) throws IOException, ServletException{
		
		request.setAttribute("errorMessage", ex.getMessage());
		request.getRequestDispatcher("/WEB-INF/views/member/loginForm.jsp").forward(request, response);
	}
	
}
