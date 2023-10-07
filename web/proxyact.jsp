<%

                        try {

                            String username = request.getParameter("username");
                            String password = request.getParameter("password");

                            System.out.println("the username is " + username);
                            System.out.println("the password is " + password);

                            if ((username.equals("proxy") ) && (password.equals("proxy"))) {

                                response.sendRedirect("proxyhome.jsp?msg=success");

                            } else {

                    %>
               <br/><br/><br/>
               <center><font color='' size='5'> Username or Password is Not Valid ... Please Try Again

                <br/><br/>
                <a href="proxy.jsp">Back</a></font></center>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }

                %>