package bo;




import bean.Customer;
import dao.CustomerDao;

public class CustomerBo {
	CustomerDao khdao= new CustomerDao();
	Customer kh=new Customer();
	   public void getkh(String email, String name,String pass,String sodt) throws Exception{
		    khdao.dangky(email, name, pass,sodt);
		    }
	   
	   public Customer ktdn(String name, String matkhau) throws Exception
	   {
		   
	    	return khdao.getkh(name, matkhau);
	   }
	   public Customer ktkh(String name) throws Exception
	   {
		   
//	    	for(khachhangbean kh: getkh())
//	    		if(kh.getMakh().toLowerCase().equals(makh.toLowerCase())&&kh.getMatkhau().equals(matkhau))
//	    			return kh;
	    	return khdao.ktkh(name);
	   }
	  
}
