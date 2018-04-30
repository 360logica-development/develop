package com.jtc.exampaper.controller;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jtc.exampaper.dao.UserDao;
import com.jtc.exampaper.dao.UserDaoImplent;
import com.jtc.exampaper.model.Question;
import com.jtc.exampaper.model.User;

/**
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserController() {
        super();
        dao=new UserDaoImplent(); 
			
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actionRequest=request.getParameter("actionRequest");
		if(actionRequest.equals("register")){
			String name=request.getParameter("name");
			String emailId=request.getParameter("emailId");
			String username=request.getParameter("userName");
			String password=request.getParameter("password");
			String contactNumber=request.getParameter("contactNumber");
			System.out.println(name);
			System.out.println(emailId);
			User user=new User();
			user.setName(name);
			user.setEmailId(emailId);
			user.setUserName(username);
			user.setPassword(password);
			user.setContactNumber(contactNumber);
			System.out.println(user.getName());
			//boolean i=dao.loginUser(user);
			int i=dao.addUser(user);
			if(i==1){
				RequestDispatcher rd=request.getRequestDispatcher("checkEmail.jsp");
				rd.forward(request, response);
			}else if(i==2){
				RequestDispatcher rd=request.getRequestDispatcher("successRegistration.jsp");
				rd.forward(request, response);
			}
			else{
				System.out.println(i);
			}
		}else if(actionRequest.equals("login")){
			String username=request.getParameter("userName");
			String password=request.getParameter("password");
			User user=new User();
			user.setUserName(username);
			user.setPassword(password);
			int i=dao.loginUser(user);
			if(i==1){
				System.out.println("You r successfully logged in");
				HttpSession session=request.getSession();
				session.setAttribute("username",username);
				RequestDispatcher rd=request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			}else{
				System.out.println("Your are not not login");
				RequestDispatcher rd=request.getRequestDispatcher("checkEmail.jsp");
				rd.forward(request, response);
			}
		}
		else if(actionRequest.equals("addQuestion")){
			String institute=request.getParameter("institute");
			String question=request.getParameter("question");
			String doq=request.getParameter("doq");
			String module=request.getParameter("module");
			String subject=request.getParameter("subject");
			String semester=request.getParameter("semester");
			String branch=request.getParameter("branch");
			Question ques=new Question();
			ques.setInstitute(institute);
			ques.setQuestion(question);
			ques.setDoq(doq);
			ques.setModule(module);
			ques.setSubject(subject);
			ques.setSemester(semester);
			ques.setBranch(branch);
			int i=dao.addQuestion(ques);
			if(i==1){
				RequestDispatcher rd=request.getRequestDispatcher("successQusetion.jsp");
				rd.forward(request, response);
			}else{
				RequestDispatcher rd=request.getRequestDispatcher("addQuestion.jsp");
				rd.forward(request, response);
			}
		}
		else if(actionRequest.equals("showPaper")){
			String subject=request.getParameter("subject");
			String semester=request.getParameter("semester");
			String branch=request.getParameter("branch");
			Question ques=new Question();
			ques.setSubject(subject);
			ques.setSemester(semester);
			ques.setBranch(branch);
			request.setAttribute("Que",dao.showQuestion(ques));
			RequestDispatcher rd=request.getRequestDispatcher("viewQuestion.jsp");
			rd.forward(request, response);
		}else if(actionRequest.equals("logout")){
			HttpSession session=request.getSession(false);
			session.setAttribute("username",null);
			session.invalidate();
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else if(actionRequest.equals("createPaper")){
			String institute=request.getParameter("institute");
			String branch=request.getParameter("branch");
			String semester=request.getParameter("semester");
			String subject=request.getParameter("subject");
			String module=request.getParameter("module");
			String paperCode=request.getParameter("paperCode");
			String time=request.getParameter("time");
			Question ques=new Question();
			ques.setInstitute(institute);
			ques.setBranch(branch);
			ques.setSemester(semester);
			ques.setSubject(subject);
			ques.setModule(module);
			/*System.out.println(ques.getInstitute());
			System.out.println(ques.getBranch());
			System.out.println(ques.getSemester());
			System.out.println(ques.getModule());
			System.out.println(ques.getSubject());*/
			request.setAttribute("institute",institute);
			request.setAttribute("branch",branch);
			request.setAttribute("semester",semester);
			request.setAttribute("subject",subject);
			request.setAttribute("module",module);
			request.setAttribute("time", time);
			request.setAttribute("paperCode", paperCode);
			request.setAttribute("queEasy", dao.createPaperEasy(ques));
			request.setAttribute("queMedium", dao.createPaperMedium(ques));
			request.setAttribute("queHard", dao.createPaperHard(ques));
			request.getRequestDispatcher("paper.jsp").forward(request, response);
		}
		else{
			
		}
	}
}
