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
 * Servlet implementation class giohangController
 */
@WebServlet("/giohangController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session= request.getSession();
		String masach=request.getParameter("ms");
		String tensach=request.getParameter("ts");
		String tacgia=request.getParameter("tg");
		String giatam=request.getParameter("gia");
		String discount=request.getParameter("sale");
		discount = discount==null?"0":discount;



			CartBo gh=null;
			if(session.getAttribute("gh")==null){
				gh=new CartBo();
				session.setAttribute("gh", gh);
			}
			
			if (masach!=null)
			{
			
				gh=(CartBo) session.getAttribute("gh");
				gh.Them(Integer.parseInt(masach), tensach, tacgia,Double.parseDouble(giatam),Double.parseDouble(discount), 1);
//				gh.Them(Integer.parseInt(masach), tensach, tacgia,3.2,2.0, 1);
//			gh.Them(Integer.parseInt(masach), tensach, tacgia,test,test_1,1);
				session.setAttribute("gh", gh);
			}
			
			

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
