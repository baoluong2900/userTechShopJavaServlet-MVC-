package bo;

import java.util.ArrayList;


import bean.PurchaseHistory;

import dao.PurchaseHistoryDao;

public class PurchaseHistoryBo {
	PurchaseHistoryDao ldao= new PurchaseHistoryDao();
	   public ArrayList<PurchaseHistory> getloai(String username) throws Exception{
		   return ldao.getHistory(username);
	   }
}
