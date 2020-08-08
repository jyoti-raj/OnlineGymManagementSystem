package com.gym;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class sessionHandling extends HttpServlet
{
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException
    {
        HttpSession session=req.getSession();
        
        String _id=req.getParameter("email");
        String _pass=req.getParameter("pass");
        
        
        session.setAttribute("email",_id);
        session.setAttribute("pass", _pass);
        
        res.sendRedirect("AdminPage.jsp");
    }
}
