package bo;

import java.util.ArrayList;

import bean.Cart;


public class CartBo {

	public ArrayList<Cart> ds=new ArrayList<Cart>();

	
	public void Them(int masach ,String tensach,String tacgia,double gia, double discount,int slmua ){
		
		for(Cart g:ds)
			if(g.getProductId()==masach)
			{
				g.setQuantity(g.getQuantity()+slmua);
				return ;
			}
		ds.add(new Cart(masach,tensach,tacgia,gia,discount,slmua));
	}
	public void xoa(String masach) {
		for(Cart g: ds)
			  if(g.getProductId()==Integer.parseInt(masach)) {
				  ds.remove(g);break;
			  }
	}
	public void SuaSoluong(int i, int l) {
		for (Cart gh : ds) {
			if (gh.getProductId()==i) {
				gh.setQuantity(l);
				break;
			}
		}
	}
	public void XoaHet() {
		ds.removeAll(ds);
	}
	public Long TongTien() {
		long s=(long)0;
		for(Cart g: ds)
			s+=g.getAmount();
		return s;
	}
public int Dem(){
    	
    	int dem=0;
    	for(Cart gh: ds)
    		
    			dem++;
    	return dem;
 	
	}
}
