package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Category;
import bean.Product;
import bo.CategoryBo;
import bo.ProductBo;

/**
 * Servlet implementation class htgioController
 */
@WebServlet("/htgioController")
public class ShowCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			CategoryBo lbo = new CategoryBo();
		 	ProductBo sbo= new ProductBo();
		 	String ml= request.getParameter("ml");
		 	String key= request.getParameter("txtfind");
		 	ArrayList<Category> dsloai=lbo.getloai();
		 	ArrayList<Product> dssach= sbo.getSach();
		    if(ml!=null) dssach= sbo.TimMaSach(dssach, ml);
		    else
		   		if(key!=null) dssach=sbo.Tim(dssach, key);
		    request.setAttribute("dsloai", dsloai);
		    request.setAttribute("dssach", dssach);
		    RequestDispatcher rd= request.getRequestDispatcher("htgio.jsp");
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
