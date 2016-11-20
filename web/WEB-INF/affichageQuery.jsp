<%-- 
    Document   : affichageQuery
    Created on : 15 nov. 2016, 20:55:22
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="css/MailChimp.css" rel="stylesheet" media="all" type="text/css">  
        <link href="css/projet2.css" rel="stylesheet" media="all" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/w3School.css" rel="stylesheet" media="all" type="text/css">
        <script type="text/javascript" src="jscript/ProjetScripts.js"></script>
    </head>
    <body>
    <body style="height:1500px">

        <header id="top" >

            <div class="container">

                <div class="row">
                    <div class="span4">
                        <a href="Main.html"><img src="photo/logo2.jpg" WIDTH=800 HEIGHT=900 BORDER=0 class="img-circle" ></a>
                    </div>

                </div>

                <div class="row">

                    <div class="span12">

                        <nav id="main-nav" class="span12">

                            <div class="menu-main-nav-container">

                                <ul  class="menu">

                                    <li class="menu-item-1" ><a href="Main.html" >Acceuil</a></li>
                                    <li  class="menu-item-2"><a href="page1.html" >Qui sommes-nous?</a></li>
                                    <li  class="menu-item-3"><a href="page2.html">Activités</a></li>
                                    <li  class="menu-item-3"><a href="page3.html" class="active">Horaire</a></li>
                                    <li  class=" menu-item-4"><a href="subscribe.jsp">Inscription</a></li>
                                    <li  class=" menu-item-5"><a href="page5.html">Nous joindre</a></li>
                                    <li  class="menu-item-6"><a href="page6.html">Se connecter</a></li>


                                </ul>

                            </div>                   

                        </nav>

                    </div>
                </div>

            </div>
        </header>
        <!-- header end-->
        <!-- Container 2  -->
        <div id="main">
            <div class="page1">
                <div class="container">
                    <div class="span8">

                        <div class="contenu-pages ">


                            <h1>Horaire</h1>
                            <h3>Les horaire disponibles pour l'activité ${requestScope.activitQuery} </h3>

                            <table class="table  table-hover">
                                <thead>
                                    <tr>
                                        <th>DATE</th>
                                        <th>HORAIRE</th>
                                        <th>LOCALE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="Horaire" items="${ requestScope.horaireList}">
                                        <tr>                         
                                            <td><fmt:formatDate value="${Horaire.id.hdate}" dateStyle="full"/></td>
                                            <td><c:out value="${Horaire.creneau.heureDebut}"/></td>
                                            <td><c:out value="${Horaire.salle.salleId}"/></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>


                    </div>


                    <!-- Container 1 row 1 -->


                    <div class="row">

                        <!-- Container 2 row 2 span 4-->
                        <div class="span3">
                            <div class="module-inscription">
                                <h2>Inscription en&nbsp;ligne</h2> 
                                <div class="bouton-ouvert">
                                    <a href="subscribe.jsp" title="Inscriptions ouvertes à tous">Ouvert à tous&nbsp;➝</a>
                                </div><!-- bouton-ouvert -->                    
                            </div><!-- module inscription -->

                            <div class="medias-sociaux">

                                <h2>Restez informé</h2>

                                <p>Pour tout savoir sur la programmation, les activités gratuites, les événements à venir, etc.</p>

                                <div>
                                    <form action="#" method="Post" name="" >
                                        <div >
                                            <label  for="email">Courriel</label>  
                                            <input id="email" name="email"  type="email" tabindex="1"  required placeholder="exemple@domain.com " oninvalid="checkEmail(this)"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
                                            <input type="submit" value="GO!" name="subscribe"  class=" btn-success" tabindex="10">                                       
                                        </div>                       	                                   
                                    </form>
                                </div>
                                <div class="icones-medias-sociaux">
                                    <div class="icone-media-social">
                                        <a href="https://www.facebook.com" title="Accédez à la page facebook du Centre de Loisirs leSoleil" target="_blank"><img src="photo/btnFacebook.png" alt="Accédez à la page facebook du Centre de Loisirs communautaires Le Soleil"></a>
                                    </div><!-- icone-media-social -->
                                    <div class="icone-media-social">
                                        <a href="https://www.twitter.com" title="Accédez à la page Twitter du Centre de Loisirs leSoleil" target="_blank"><img src="photo/btnTwitter.jpg" alt="Accédez à la page Twitter du Centre de Loisirs communautaires Le Soleil"></a>
                                    </div><!-- icone-media-social -->
                                </div><!-- icones-medias-sociaux -->
                            </div><!-- medias-sociaux -->

                            <div class="gal-photo">
                                <h2>Galeries photos</h2>

                                <a class="photo" href="#" title="Course en famille 2016"><img width="800" height="307" src="photo/coursePhoto.jpg"  alt="" ></a>

                                <a class="photo" href="#" title="Course en famille 2016"><img width="300" height="307" src="photo/coursePhoto3.jpg"  alt=""></a>

                                <div class="bouton-ouvert">

                                    <a href="#" title="Toutes les galeries">Toutes les galeries&nbsp;➝</a>

                                </div><!-- bouton-ouvert -->

                            </div ><!-- gal-photo -->

                        </div><!-- Container 2 row 2 span 4 End-->

                    </div>
                    <!-- Container 2 row 2 End-->

                </div> <!-- Container  End-->
            </div>
        </div>



        <footer id="footer">

            <div class="container">

                <div class="row">
                    <div class="texture">
                        <img src="photo/textureFooter.jpg" alt="Texture du bas de page">


                    </div>
                    <div class="row">


                        <div class="span9">
                            <div class="footer-col">
                                <a href="Main.html"><img src="photo/logo2.jpg" WIDTH=200 HEIGHT=400 BORDER=0 class="img-circle" ></a>
                                <p class="adresse">2345, rue Le ciel<br>Montréal (Québec)  H7L3M8</p>
                                <p class="adresse">514 111-0000</p>
                            </div><!-- footer-col -->
                        </div><!-- span9 -->

                        <div class="span3">
                            <div class="footer-col">
                                <ul  class="menu">

                                    <li class="menu-item-1" ><a href="Main.html" >Acceuil</a></li>
                                    <li  class="menu-item-2"><a href="page1.html" >Qui sommes-nous?</a></li>
                                    <li  class="menu-item-3"><a href="page2.html">Activités</a></li>
                                    <li  class="menu-item-3"><a href="page3.html">Horaire</a></li>
                                    <li  class=" menu-item-4"><a href="subscribe.jsp">Inscription</a></li>
                                    <li  class=" menu-item-5"><a href="page5.html">Nous joindre</a></li>
                                    <li  class="menu-item-6"><a href="page6.html">Se connecter</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div><!-- row -->
            </div><!-- container -->
        </footer>

        <div class="bande-rouge">
        </div>

        <div class="topButton">
            <a href="#top" id="smoothup" title="Back to top" style="display: block;">Haut de la page&nbsp;<img src="photo/arrow-top.jpg" alt="Retour au haut de la page"></a>
        </div>
        <script>
            var divs = $('.topButton');
            $(window).scroll(function () {
                var percent = $(document).scrollTop() / (($(document).height() - $(window).height()));
                divs.css('opacity', percent);
            });
        </script>


    </body>
</body>
</html>
