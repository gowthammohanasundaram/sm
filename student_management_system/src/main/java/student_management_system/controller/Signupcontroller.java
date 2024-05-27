package student_management_system.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import student_management_system.dao.Studentdao;
import student_management_system.dto.Student;

@WebServlet("/signup")
public class Signupcontroller extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		Student student=new Student();
		student.setName(name);
		student.setEmail(email);
		student.setPassword(password);
		
		
		Studentdao studentdao=new Studentdao();
		Student student2=studentdao.saveStudent(student);
		
		if(student2!=null) {
			req.setAttribute("message", "student signedup succesfully");
			RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
			dispatcher.forward(req, resp);
		}
	}
}
