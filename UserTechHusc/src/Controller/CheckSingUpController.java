package Controller;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MyFunction;


/**
 * Servlet implementation class ktdkController
 */
@WebServlet("/ktdkController")
public class CheckSingUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckSingUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			

			HttpSession session=request.getSession();
		  	request.setCharacterEncoding("UTF-8");
		    response.setCharacterEncoding("UTF-8");
		    response.setContentType("text/html; charset=UTF-8");
		    String username=request.getParameter("username");
		    String password=request.getParameter("password");
		    String email=request.getParameter("email");
		    String sodth=request.getParameter("sodth");
		 
		    
		    MyFunction fun=new MyFunction();
		    if( fun.check_tendn(username)==false
		    		&& fun.Sign_up(email,username,password,sodth)!=0) {
		    	 	session.setAttribute("username", username);
			    	response.getWriter().print(1);
			    	
				    System.out.println("Đăng ky thành công");
				    RequestDispatcher view=request.getRequestDispatcher("HtSach");
				    view.forward(request,response);
		    }else {
		    	response.getWriter().print(0);
		    }
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		      

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
