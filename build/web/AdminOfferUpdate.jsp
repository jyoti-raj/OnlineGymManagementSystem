
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
        
        
                
                Connection cn=(Connection)application.getAttribute("CONN");
                 String _id=(String) session.getAttribute("uid");
             if(_id==null){
                 response.sendRedirect("login.jsp");
             }
             else{
                String _oid=request.getParameter("o_id");
                String odur=request.getParameter("o_duration");
                double ocharges=Double.parseDouble(request.getParameter("o_charges"));
                String odetails=request.getParameter("o_details");
                           
                try
                {
                    PreparedStatement ps=cn.prepareStatement("update offerdetails set ODuration=?, OCharges=?, ODetails=? where OfferId=?");
                    ps.setString(1,odur);
                    ps.setDouble(2,ocharges);
                    ps.setString(3,odetails);
                     ps.setString(4,_oid);
                    
                    ps.executeUpdate();
            
                    
                        //javax.swing.JOptionPane.showMessageDialog(null, "Record Updated");
                         out.println("<script>alert(\"Updated\");</script>");
                         session.setAttribute("OfferId", _oid);
                         
                        response.sendRedirect("ShowOfferDetail.jsp?offerid="+_oid);
                    
                         out.println("<script>alert(\"Not Updated\");</script>");
                    
               
                }
                catch(Exception ex)
                {
                }
             }
                
                
             
                 
  %>    
       