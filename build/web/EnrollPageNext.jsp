
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%
        
        
                
                Connection cn=(Connection)application.getAttribute("CONN");
                 String _id=(String) session.getAttribute("uid");
                  String  _oid= (String) session.getAttribute("id");
                 out.println(_oid);
                // String _oid=request.getParameter("oid");
                 String oname=request.getParameter("O_Name");
                double ocharges=Double.parseDouble(request.getParameter("o_charges"));
                String oduration=request.getParameter("o_duration");
              
                     if(!cn.isClosed())
            {
                    PreparedStatement ps=cn.prepareStatement("insert into memberdetails(Email,OfferId,OName,ODuration,OCharges) values(?,(select OName,ODuration,OCharges from offerdetails where OfferId=?));");
                    ps.setString(1,_id);
                    ps.setString(3,oname);
                   ps.setString(4,oduration);
                      ps.setDouble(5,ocharges);
                       ps.setString(2,_oid);
                    
                 
                        int a = ps.executeUpdate();
            
                    if(a>0){
                        //javax.swing.JOptionPane.showMessageDialog(null, "Record Updated");
                         out.println("<script>alert(\"Enrolled\");</script>");
                         response.sendRedirect("latestOffers.jsp");
                    }
                   else{
                         out.println("<script>alert(\"Not Enrolled\");</script>");
                    }
                         //session.setAttribute("OfferId", _oid);                                                              
                   
                }
              
  %>    
       