package bo;

import java.util.ArrayList;

import bean.Product;
import dao.ProductDao;



public class ProductBo {
	ProductDao sdao = new ProductDao();
	public ArrayList<Product> getSach() throws Exception{
		return sdao.getsach();
	}
	public ArrayList<Product> TimMaSach(ArrayList<Product> ds, String maloai){
		ArrayList<Product> tam= new ArrayList<Product>();
		for (Product sv:ds)
			if(sv.getCategoryId()==Integer.parseInt(maloai))
				tam.add(sv);
		return tam;
	
	}
	public ArrayList<Product> Tim(ArrayList<Product> ds, String key){
    	ArrayList<Product> tam= new ArrayList<Product>();
    	for(Product sv: ds)
    		if(sv.getName().toLowerCase().contains(key.toLowerCase())||sv.getDescription().toLowerCase().contains(key.toLowerCase()))
    			tam.add(sv);
    	return tam;
 	
	}
	public int Dem( ArrayList<Product> ds, String loaisach){
    	
    	int dem=0;
    	for(Product sv: ds)
    		if(sv.getCategoryId()==Integer.parseInt(loaisach))
    			dem++;
    	return dem;
 	
	}
	
}


