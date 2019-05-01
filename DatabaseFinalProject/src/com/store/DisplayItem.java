package com.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DisplayItem implements FrontControllerInterface{
	Product aProduct = null;
	DBOperation dbo;
	String data ="";
	
	public DisplayItem() {
		aProduct =new Product();
	    dbo = new DBOperation();
	}
	
	public String execute(HttpServletRequest request,
        HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		data = dbo.display();
		if(data != null){
			 session.setAttribute("operation", "Data");
			 session.setAttribute("result", data);
			 return "ProductView2.jsp";
	    }
		else {
	    	return "error2.jsp";
	    } 
   }
	public void dispatch(HttpServletRequest request,
        HttpServletResponse response, String page) 
           throws  Exception {
	  response.sendRedirect(page);
	           
   }
}
