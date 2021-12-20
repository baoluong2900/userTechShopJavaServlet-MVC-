package bo;
import java.util.ArrayList;

import bean.Category;
import dao.CategoryDao;


public class CategoryBo {
	CategoryDao ldao= new CategoryDao();
	   public ArrayList<Category> getloai() throws Exception{
		   return ldao.getloai();
	   }
}
