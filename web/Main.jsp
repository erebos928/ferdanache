<%-- 
    Document   : Main
    Created on : Nov 19, 2016, 8:13:40 PM
    Author     : shahin.behrooz@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
     <head>
        <title>SessionProject</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="css/projet2.css" rel="stylesheet" media="all" type="text/css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/w3School.css" rel="stylesheet" media="all" type="text/css">
        <script type="text/javascript" src="jscript/ProjetScripts.js"></script>
    </head>

    <body style="height:1500px">

           <header id="top" >
            <div class="container">

                <div class="row">
                    <div class="span4">
                        <a href="Main.jsp"><img src="photo/logo2.jpg" WIDTH=800 HEIGHT=900 BORDER=0 class="img-circle" ></a>
                    </div>
                    <div class="span4"></div>
                    <c:if test="${not empty(user)}">
                        <div class="span1"></div>
                        <div class="span2">
                        <label type="label" class="label label-success" data-toggle="collapse" data-target="#demo"><span class="glyphicon glyphicon-user"></span>&#160;${user.name}</label>
                        <div id="demo" class="collapse">
                            <label type="label" class="label label-success" data-toggle="collapse" data-target="#demo"><a href="Controler?action=logout"><span class="glyphicon glyphicon-log-out"></span>&#160;logout</a></label> 
                        </div>
                        </div>
                    </c:if>
                </div>
                    

                <div class="row">

                    <div class="span12">

                        <nav id="main-nav" class="span12">

                            <div class="menu-main-nav-container">

                                <ul  class="menu">

                                    <li class="menu-item-1" ><a href="Main.jsp" class="active">Acceuil</a></li>
                                    <li  class="menu-item-2"><a href="page1.jsp">Qui sommes-nous?</a></li>
                                    <li  class="menu-item-3"><a href="page2.jsp">Activités</a></li>
                                    <li  class="menu-item-3"><a href="page3.jsp">Horaire</a></li>
                                    <li  class=" menu-item-4"><a href="subscribe.jsp">Inscription</a></li>
                                    <li  class=" menu-item-5"><a href="page5.jsp" >Nous joindre</a></li>
                                    <li  class="menu-item-6"><a href="page6.jsp">Se connecter</a></li>


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
            <div class="container">
                <!-- Container 2 row 1 -->
                <div class="row">

                    <div class="span12">

                        <div class="span12">
                            <img class="mySlides" src="photo/mainPage15.jpg" >
                            <img class="mySlides" src="photo/mainPage8.jpg" >
                            <img class="mySlides" src="photo/mainPage6.jpg" >
                            <img class="mySlides" src="photo/mainPage10.jpg" >
                            <img class="mySlides" src="photo/mainPage12.jpg" >
                            <img class="mySlides" src="photo/mainPage16.jpg" >
                            <img class="mySlides" src="photo/mainPage17.jpg" >
                            <img class="mySlides" src="photo/mainPage3.jpg" >

                            <script>
                                var myIndex = 0;
                                carousel();

                                function carousel() {
                                    var i;
                                    var x = document.getElementsByClassName("mySlides");
                                    for (i = 0; i < x.length; i++) {
                                        x[i].style.display = "none";
                                    }
                                    myIndex++;
                                    if (myIndex > x.length) {
                                        myIndex = 1
                                    }
                                    x[myIndex - 1].style.display = "block";
                                    setTimeout(carousel, 3000); // Change image every 3 seconds
                                }
                            </script>

                        </div>

                    </div>

                </div>

                <!-- Container 2 row 1 End -->

                <!-- Container 2 row 2 -->


                <div class="row">

                    <div class="span8">

                        <!-- Container 2 row 2 row 1 -->
                        <div class="row">

                            <div class="span4">

                                <div class="devenez-membre">

                                    <h2>Devenez membre</h2>
                                    <p>Faites partie du Centre LeSoleil!</p>
                                    <a class="bouton-savoir-plus" href="#" title="Devenir membre du Centre de Loisirs communautaires LeSoleil">Pour en savoir plus&nbsp;➝</a>

                                </div>
                            </div>

                            <div class="span4">

                                <div class="impliquez-vous">
                                    <h2>Impliquez-vous</h2>
                                    <p>Et faites une différence dans la&nbsp;communauté!</p>
                                    <a class="bouton-savoir-plus" href="#" title="Impliquez-vous au Centre de Loisirs communautaires Le Soleil">Pour en savoir plus&nbsp;➝</a>

                                </div>
                            </div>

                        </div>

                        <!-- Container 2 row 2 row 1 end -->

                        <!-- Container 2 row 2 row 2-->
                        <div class="row">
                            <div class="span4">
                                <div class="nouvelles-section">
                                    <div class="nouvelles-header">

                                        <h2>Nouvelles</h2>
                                        <div class="nouvelles-triangle">
                                            <img src="photo/triangle.jpg" alt="Nouvelles">
                                        </div>
                                    </div>
                                    <div class="nouvelles-container">
                                        <!-- nouvelles-contenu -->
                                        <div class="nouvelles-contenu">

                                            <div class="boite-titre">
                                                <h4 class="titre"><a href="#">Horaire de Gymnastique</a></h4>
                                                <div class="nouvelles-date">
                                                    <p>29 septembre 2016</p>                                
                                                </div>
                                            </div>
                                            <p>Veuillez noter que la salle principale de Gymnastique 
                                                sera fermée jusqu’au 28 Octobre. On en profite d’ailleurs 
                                                pendant ce temps pour faire les rénovations nécessaires à la mise en place de notre nouvelle salle de gym ! 
                                                Nous avons déjà installé l’air climatisé et peinturé les lieux. Les machines d’entrainement devraient arriver la semaine prochaine. 
                                                L’ouverture approche […]</p>

                                            <a class="bouton-savoir-plus" href="#" title="Horaire de Gymnastique">Pour en savoir plus&nbsp;➝</a>
                                        </div>
                                        <!-- nouvelles-contenu -->
                                    </div>
                                    <!-- nouvelles-container -->

                                    <div class="nouvelles-container">
                                        <!-- nouvelles-contenu -->
                                        <div class="nouvelles-contenu">

                                            <div class="boite-titre">
                                                <h4 class="titre"><a href="#">Nos champions de Volleyball !</a></h4>
                                                <div class="nouvelles-date">
                                                    <p>29 septembre 2016</p>                                
                                                </div>
                                            </div>
                                            <p>Notre équipe de VolleyBall ( moins de 16 ans) a participé au championnat 
                                                de monde amateur qui s'est déroulé en Brésil. Nos champions ont gagné la médaille de bronze […]
                                            </p>

                                            <a class="bouton-savoir-plus" href="#" title="Nos champions de Volleyball ">Pour en savoir plus&nbsp;➝</a>
                                        </div>
                                        <!-- nouvelles-contenu -->
                                    </div>
                                    <!-- nouvelles-container -->

                                    <a class="bouton-archives" href="#" title="Voir les archives des nouvelles">Voir les archives&nbsp;➝</a>

                                </div>
                                <!-- nouvelles-section End-->
                            </div>
                            <!-- nouvelles-section span4 End-->

                            <!-- Event Section -->

                            <div class="span4">
                                <div class="evenements-section">                        	
                                    <div class="evenements-header">
                                        <h2>Événements</h2>
                                        <div class="evenements-triangle">
                                            <img src="photo/triangle.jpg" alt="Événements">
                                        </div>
                                    </div><!-- Event-header -->


                                    <div class="evenements-container">
                                        <div class="evenements-contenu">
                                            <img width="621" height="960" src="photo/BasketEvent.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir"  >                                            
                                            <div class="boite-titre">
                                                <h4 class="titre"><a href="#">Finale de Championat Amateur de BasketBall</a></h4>
                                            </div><!-- titre -->
                                            <a class="bouton-savoir-plus" href="#" title="Final BasketBall">Pour en savoir plus&nbsp;➝</a>

                                        </div><!-- Event-contenu -->
                                    </div><!-- Event-container -->

                                    <div class="evenements-container">
                                        <div class="evenements-contenu">
                                            <img width="940" height="550" src="photo/DanceEvent.jpg" class="scale-with-grid wp-post-image" alt="dansez avec moi " >                                            
                                            <div class="boite-titre">
                                                <h4 class="titre"><a href="#">Soirée de danse</a></h4>
                                            </div><!-- titre -->
                                            <a class="bouton-savoir-plus" href="#" title="Soirée de danse">Pour en savoir plus&nbsp;➝</a>


                                        </div><!-- Event-contenu -->
                                    </div><!-- Event-container -->



                                    <a class="bouton-archives" href="#" title="Voir les archives des événements">Voir les archives&nbsp;➝</a>
                                </div><!-- Event-section --> 
                            </div><!-- Event Section span End-->


                        </div><!-- Container 2 row 2 row 2 end-->


                    </div><!-- Container 2 row 2 span 8 end-->


                    <!-- Container 2 row 2 span 4-->
                    <div class="span2">
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
                                    <a href="https://www.facebook.com" title="Accédez à la page facebook du Centre de Loisirs le Soleil" target="_blank"><img src="photo/btnFacebook.png" alt="Accédez à la page facebook du Centre de Loisirs communautaires Le Soleil"></a>
                                </div><!-- icone-media-social -->
                                <div class="icone-media-social">
                                    <a href="https://www.twitter.com" title="Accédez à la page Twitter du Centre de Loisirs le Soleil" target="_blank"><img src="photo/btnTwitter.jpg" alt="Accédez à la page Twitter du Centre de Loisirs communautaires Le Soleil"></a>
                                </div><!-- icone-media-social -->
                            </div><!-- icones-medias-sociaux -->
                        </div><!-- medias-sociaux -->

                        <div class="gal-photo">
                            <h2>Galeries photos</h2>

                            <a class="photo" href="#" title="Course en famille 2016"><img width="800" height="307" src="photo/coursePhoto.jpg"  alt=""  ></a>

                            <a class="photo" href="#" title="Course en famille 2016"><img width="300" height="307" src="photo/coursePhoto3.jpg" alt="" ></a>

                            <div class="bouton-ouvert">

                                <a href="#" title="Toutes les galeries">Toutes les galeries&nbsp;➝</a>

                            </div><!-- bouton-ouvert -->

                        </div ><!-- gal-photo -->

                    </div><!-- Container 2 row 2 span 4 End-->

                </div>
                <!-- Container 2 row 2 End-->

            </div> <!-- Container  End-->

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
                                <a href="#"><img src="photo/logo2.jpg" WIDTH=200 HEIGHT=400 BORDER=0 class="img-circle" ></a>
                                <p class="adresse">2345, rue Le ciel<br>Montréal (Québec)  H7L3M8</p>
                                <p class="adresse">514 111-0000</p>
                            </div><!-- footer-col -->
                        </div><!-- span9 -->

                        <div class="span3">
                            <div class="footer-col">
                                <ul  class="menu">

                                    <li class="menu-item-1" ><a href="#" class="active">Acceuil</a></li>
                                    <li  class="menu-item-2"><a href="page1.jsp">Qui sommes-nous?</a></li>
                                    <li  class="menu-item-3"><a href="page2.jsp">Activités</a></li>
                                    <li  class="menu-item-3"><a href="page3.jsp">Horaire</a></li>
                                    <li  class=" menu-item-4"><a href="subscribe.jsp">Inscription</a></li>
                                    <li  class=" menu-item-5"><a href="page5.jsp">Nous joindre</a></li>
                                    <li  class="menu-item-6"><a href="page6.jsp">Se connecter</a></li>

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
</html>

