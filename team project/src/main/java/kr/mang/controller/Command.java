package kr.mang.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {

	// FrontController : 매니져급 직원
	// ~~~ service (일반클래스 / pojo) : 알바생
	// Commend 아르바이트 생이라면 반드시 시켜야하는 메뉴얼
	public String execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException;
	// 오버라이딩은 반드시 자식 클래스가 재정의 해야한다.
	///--> 규제의 강제화가 가능하다. 
}