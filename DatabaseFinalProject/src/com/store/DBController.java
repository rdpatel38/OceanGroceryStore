package com.store;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

public class DBController extends HttpServlet  {
	
	private static final long serialVersionUID = 1L;
	FrontControllerInterface mycommand;
	Session mysession = null;
    
	public void init(ServletConfig config) throws ServletException {
	    super.init(config);
	}
  
	public void destroy() {}
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
		processRequest(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, java.io.IOException {
       processRequest(request, response);
	}
   
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			    throws ServletException, java.io.IOException {
		String page = null;
		try { 
			if(request.getParameter("action").equals("Insert")){
				mycommand= (FrontControllerInterface) new InsertItem();
			}
			else if(request.getParameter("action").equals("Delete")) {
				mycommand= (FrontControllerInterface) new DeleteItem();
    		}
			else if(request.getParameter("action").equals("Display")) {
				mycommand= (FrontControllerInterface) new DisplayItem();
    		}
			else if(request.getParameter("action").equals("Update")) {
				mycommand= (FrontControllerInterface) new UpdateItem();
		  	}
			else if(request.getParameter("action").equals("Find")) {
			    mycommand= (FrontControllerInterface) new FindItem();
		   }
			
			page = mycommand.execute(request, response);
			mycommand.dispatch(request, response, page);
		   
		}catch (Exception e) {
			response.sendRedirect("error.jsp");
			//System.out.println("Error "+e.getMessage());
		}
	}
}
