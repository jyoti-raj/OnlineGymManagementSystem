<%-- 
    Document   : registrationconfirm
    Created on : Jul 12, 2019, 3:14:04 PM
    Author     : Jyoti Kumari
--%>

<%@page import="java.sql.CallableStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
           Connection cn=(Connection)application.getAttribute("CONN");
           String name= request.getParameter("name");
           String mobile=request.getParameter("mobile");
            String address = request.getParameter("message");
           String age = request.getParameter("age");
           String email = request.getParameter("email");
          String password=request.getParameter("pass");
          String gender = request.getParameter("gender");
           String height = request.getParameter("height");
           String weight = request.getParameter("weight");
           String _type="Member";
           CallableStatement csbt = cn.prepareCall("{call sign_up(?,?,?,?,?,?,?,?,?,?)}"); 
           csbt.setString(1,name);
           csbt.setString(2,mobile);
           csbt.setString(3,address);
           csbt.setString(4,age);
           csbt.setString(5,email);
           csbt.setString(6,password);
           csbt.setString(7,gender);
           csbt.setString(8,height);
           csbt.setString(9,weight);
           csbt.setString(10,_type);
              csbt.execute();
                  // javax.swing.JOptionPane.showMessageDialog(null, "Record Inserted");
                    //out.println("Record Inserted!!");                            
                    //
                    response.sendRedirect("login.jsp");
       
 
 
 %>