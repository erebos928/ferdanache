<%-- 
    Document   : head
    Created on : Nov 19, 2016, 7:39:56 PM
    Author     : shahin.behrooz@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <header id="top" >
            <div class="container">

                <div class="row">
                    <div class="span4">
                        <a href="Main.jsp"><img src="photo/logo2.jpg" WIDTH=800 HEIGHT=900 BORDER=0 class="img-circle" ></a>
                    </div>
                    <div class="span4"></div>
                    
                    <div class="span1"></div>
                    <div class="span1"></div>
                    <c:if test="not empty ${user}">
                    <div class="span1">${user.name}</div>
                    </c:if>
                </div>
                    

                <div class="row">

                    <div class="span12">

                        <nav id="main-nav" class="span12">

                            <div class="menu-main-nav-container">

                                <ul  class="menu">

                                    <li class="menu-item-1" ><a href="Main.jsp" >Acceuil</a></li>
                                    <li  class="menu-item-2"><a href="page1.jsp">Qui sommes-nous?</a></li>
                                    <li  class="menu-item-3"><a href="page2.jsp">Activités</a></li>
                                    <li  class="menu-item-3"><a href="page3.jsp">Horaire</a></li>
                                    <li  class=" menu-item-4"><a href="subscribe.jsp">Inscription</a></li>
                                    <li  class=" menu-item-5"><a href="page5.jsp" >Nous joindre</a></li>
                                    <li  class="menu-item-6"><a href="#" class="active">Se connecter</a></li>


                                </ul>

                            </div>                   

                        </nav>

                    </div>
                </div>

            </div>

        </header>
