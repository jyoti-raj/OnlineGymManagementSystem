<%-- 
    Document   : registrationconfirm
    Created on : Jul 12, 2019, 3:14:04 PM
    Author     : Jyoti Kumari
--%>

<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
           Connection cn=(Connection)application.getAttribute("CONN");
           String _oid= request.getParameter("O_Id");
           String oname=request.getParameter("O_Name");
            String odur = request.getParameter("o_duration");
           double ocharges=Double.parseDouble(request.getParameter("o_charges"));
           String odetails=request.getParameter("o_details");
           String opr=request.getParameter("Operation");
                      
                if(opr.equalsIgnoreCase("Insert"))
                {
                      
                    PreparedStatement ps=cn.prepareStatement("insert into offerdetails(OfferID,OName,ODuration,OCharges,ODetails) values(?,?,?,?,?);");
                    
                    ps.setString(1,_oid);
                    ps.setString(2,oname);
                    ps.setString(3,odur);
                    ps.setDouble(4,ocharges);
                    ps.setString(5,odetails);
                    
                
                    int a=ps.executeUpdate();
                    if(a>0)
                    {
                         //javax.swing.JOptionPane.showMessageDialog(null, "Record Inserted");
                        response.sendRedirect("AdminOfferInsert.jsp");
                    }
                }
                
                else if(opr.equalsIgnoreCase("Delete"))
                {
                   PreparedStatement ps=cn.prepareStatement("delete from offerdetails where OfferId=?");
                    ps.setString(1, _oid);
                    
                    int a=ps.executeUpdate();
                    if(a>0)
                    {
                           response.sendRedirect("AdminOffer.jsp");
                    }
                    
                }
                
               else if(opr.equalsIgnoreCase("Edit")) {
                    response.sendRedirect("UpdateOfferDetals.jsp?OfferId="+_oid);
                }
                

 %>