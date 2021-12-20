package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.CartBo;


/**
 * Servlet implementation class capnhatController
 */
@WebServlet("/capnhatController")
public class UpdateCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		
		CartBo gh = new CartBo();
		String soluong=request.getParameter("soluong");
		String masach=request.getParameter("masach");


		if (masach!=null)
		{
			if (request.getParameter("butcapnhat")!=null){
	
			gh=(CartBo) session.getAttribute("gh");
			gh.SuaSoluong(Integer.parseInt(masach),Integer.parseInt(soluong) );
			session.setAttribute("gh", gh);
			}
			if (request.getParameter("butxoa")!=null){
		
				gh=(CartBo) session.getAttribute("gh");
				gh.xoa(masach);
				session.setAttribute("gh", gh);
			}
		}
		//Hien thi gio
		// response.sendRedirect("htgio.jsp");
		RequestDispatcher rd= request.getRequestDispatcher("htgioController");
	    rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
