package bo;

import java.util.ArrayList;


import bean.Order;

import dao.OrderDao;

public class OrderBo {
	OrderDao ldao= new OrderDao();
	   public ArrayList<Order> getloai() throws Exception{
		   return ldao.getloai();
	   }
}
