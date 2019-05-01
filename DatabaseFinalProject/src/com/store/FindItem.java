package com.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FindItem implements FrontControllerInterface{
	Product aProduct = null;
	DBOperation dbo;
	
	public FindItem() {
		aProduct = new Product();
	    dbo = new DBOperation();
	}
	
	public String execute(HttpServletRequest request,
        HttpServletResponse response) throws Exception {
		
		int inID = 0;
		inID = Integer.parseInt(request.getParameter("val1"));
		HttpSession session = request.getSession();
		
		aProduct=dbo.find(inID);
	    if(aProduct != null) { 
	         session.setAttribute("val1", String.valueOf(aProduct.getpID()));
	         session.setAttribute("val2", String.valueOf(aProduct.getpName()));
	         session.setAttribute("val3", String.valueOf(aProduct.getpCat()));
	         session.setAttribute("val4", String.valueOf(aProduct.getpDesc()));
	         session.setAttribute("val5", String.valueOf(aProduct.getpsize()));
	         session.setAttribute("val6", String.valueOf(aProduct.getunitPrice()));
	         session.setAttribute("val7", String.valueOf(aProduct.getregPrice()));
	         
	         return "DBchoices.jsp";
		}else return "error2.jsp";
   }
    public void dispatch(HttpServletRequest request,
        HttpServletResponse response, String page) 
           throws  Exception {
	  response.sendRedirect(page);
   }
}
