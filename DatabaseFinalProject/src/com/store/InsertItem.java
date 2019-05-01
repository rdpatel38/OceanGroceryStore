package com.store;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InsertItem implements FrontControllerInterface{
	Product aProduct = null;
	DBOperation dbo;
	
	public InsertItem() {
		   aProduct = new Product();
	       dbo = new DBOperation();
	}
	public String execute(HttpServletRequest request,
         HttpServletResponse response) throws Exception {
		
		int inID = 0;
		String inName = null;
		String inSize = null;
		String inCat = null;
		String inDesc = null;
		float inrPrice = 0;
		float inuPrice = 0;
		
		
		inID = Integer.parseInt(request.getParameter("val1"));
		inName =request.getParameter("val2");
		inCat =request.getParameter("val3");
		inDesc =request.getParameter("val4");
		inSize = request.getParameter("val5");
		inuPrice = Float.parseFloat(request.getParameter("val6"));
		inrPrice = Float.parseFloat(request.getParameter("val7"));
		
		aProduct.setpID(inID);
		aProduct.setpName(inName);
		aProduct.setpCat(inCat);
		aProduct.setpDesc(inDesc);
		aProduct.setregPrice(inrPrice);
		aProduct.setunitPrice(inuPrice);
		aProduct.setpsize(inSize);
		
	    if(dbo.insertion(aProduct)) {
		 HttpSession session = request.getSession();
         session.setAttribute("operation", "Inserted");
         session.setAttribute("sid", request.getParameter("val1"));
         session.setAttribute("sname", request.getParameter("val2"));
         session.setAttribute("scat", request.getParameter("val3"));
         session.setAttribute("sdesc", request.getParameter("val4"));
         session.setAttribute("ssize", request.getParameter("val5"));
         session.setAttribute("srprice", request.getParameter("val7"));
         session.setAttribute("suprice", request.getParameter("val6"));
    		
		 return "ProductView1.jsp";
	    }else {
		 return "error2.jsp";}
   }
    public void dispatch(HttpServletRequest request,
        HttpServletResponse response, String page) 
           throws  Exception {
	  response.sendRedirect(page);
	           
   }
}
