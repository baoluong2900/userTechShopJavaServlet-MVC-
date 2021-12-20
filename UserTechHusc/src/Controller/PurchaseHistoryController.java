package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import bean.PurchaseHistory;

import dao.MyFunction;

/**
 * Servlet implementation class PurchaseHistory
 */
@WebServlet("/PurchaseHistory")
public class PurchaseHistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PurchaseHistoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

				try {
					MyFunction f=new MyFunction();
					 response.setCharacterEncoding("utf-8");
						request.setCharacterEncoding("utf-8");
						ArrayList<PurchaseHistory> cthd=f.Chitiethoadon("bao1234");
				
						 request.setAttribute("cthd", cthd);
				    
						 RequestDispatcher rd=request.getRequestDispatcher("htgio2.jsp");
				   
				    rd.forward(request, response);
				} catch (Exception e) {
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
