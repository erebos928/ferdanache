<%-- 
    Document   : page3
    Created on : Nov 19, 2016, 8:09:42 PM
    Author     : shahin.behrooz@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>SessionProject</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link href="css/MailChimp.css" rel="stylesheet" media="all" type="text/css">  
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
                                    <li  class="menu-item-3"><a href="page3.jsp" class="active">Horaire</a></li>
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
            <div class="page1">
                <div class="container">
                    <div class="span8">

                        <div  class="contenu-activite">

                            <h1 >Nos Horaires d'activités</h1>

                            <div class="row">
                                <div class="span4">
                                    <div class="activite-section">

                                        <!-- Activite Danse -->

                                        <div class="activite-header">
                                            <h2>Danse</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">

                                            <div class="activite-contenu">

                                                <img width="621" height="960" src="photo/mainPage10.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir"  >                                            <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=danse&action=query">Danse Aérobic !</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=danse&action=query" title="Consulter horaire dance">Consulter Horaire&nbsp;➝</a>

                                            </div>

                                        </div>
                                        <!-- Activite Danse End-->
                                        <!-- Activite Dessin -->
                                        <div class="activite-header">
                                            <h2>Spa</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">


                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/mainPage8.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir" >                                            
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=spa&action=query">Spa et confort !</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=spa&action=query" title="Consulter horaire Spa ">Consulter Horaire&nbsp;➝</a>

                                            </div>
                                        </div>
                                        <!-- Activite Dessin End-->
                                        <!-- Activite Natation -->
                                        <div class="activite-header">
                                            <h2>Natation</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">


                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/mainPage17.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir"  >                                            
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=natation&action=query">Natation pour tous!</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=natation&action=query" title="Consulter horaire natation ">Consulter Horaire&nbsp;➝</a>

                                            </div>
                                        </div>
                                        <!-- Activite Gymnastique End-->
                                        <div class="activite-header">
                                            <h2>Gymnastique</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">


                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/gymnas.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir" >                                            
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=gymnastique&action=query">Gymnastique pour les enfants !</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=gymnastique&action=query" title="Consulter horaire gymnastique ">Consulter Horaire&nbsp;➝</a>

                                            </div>
                                        </div>
                                        <!-- Activite Gymnastique End-->


                                    </div>
                                    <!-- nouvelles-section End-->
                                </div>
                                <!-- nouvelles-section span4 End-->

                                <!-- Event Section -->

                                <div class="span4">
                                    <!-- Activite Karaté-->
                                    <div class="activite-section">                        	
                                        <div class="activite-header">
                                            <h2>Karaté</h2>
                                            <div class="activite-triangle">
                                                <img src="photo/triangle.jpg" alt="">
                                            </div>
                                        </div><!-- Event-header -->


                                        <div class="activite-container">
                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/karate.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir"  >                                            
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=karate&action=query">La force et le plaisir !</a></h4>
                                                </div><!-- titre -->
                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=karate&action=query" title="Consulter horaire de Karaté">Consulter Horaire&nbsp;➝</a>


                                            </div>
                                        </div>

                                        <!-- Activite Karaté End-->                                      

                                        <!-- Activite Yoga-->
                                        <div class="activite-header">
                                            <h2>Yoga</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">


                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/yoga.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir"  >                                           
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=yoga&action=query">Finesse et relaxation !</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=yoga&action=query" title="Consulter horaire de Yoga ">Consulter Horaire&nbsp;➝</a>

                                            </div>
                                        </div>
                                        <!-- Activite yoga End-->
                                        <!-- Activite VolleyBal-->
                                        <div class="activite-header">
                                            <h2>VolleyBall</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">


                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/volley.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir"  >                                            
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=volleyball&action=query">La forme et la fitnesse !</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=volleyball&action=query" title="Consulter horaire volleyBall ">Consulter Horaire&nbsp;➝</a>

                                            </div>
                                        </div>
                                        <!-- Activite VolleyBal End-->
                                        <!-- Activite Jeu d'échec-->
                                        <div class="activite-header">
                                            <h2>Jeux d'échec</h2>
                                            <div class="activite-triangle"><img src="photo/triangle.jpg" alt="Nouvelles"></div>
                                        </div>

                                        <div class="activite-container">


                                            <div class="activite-contenu">
                                                <img width="621" height="960" src="photo/echec.jpg" class="scale-with-grid wp-post-image" alt="déclic Loisir" >                                            
                                                <div class="boite-titre">
                                                    <h4 class="titre"><a href="Controler?activitQuery=jeux&action=query">Plein de reflexion !</a></h4>
                                                </div><!-- titre -->

                                                <a class="bouton-consulter-horaire" href="Controler?activitQuery=jeux&action=query" title="Consulter horaire jeu d'échec">Consulter Horaire&nbsp;➝</a>

                                            </div>
                                        </div>
                                        <!-- Activite Jeu d'échec End-->
                                    </div><!-- Event-section --> 
                                </div><!-- Event Section span End-->


                            </div><!-- Container 2 row 2 row 2 end-->

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

                                <a class="photo" href="#" title="Course en famille 2016"><img width="800" height="307" src="photo/coursePhoto.jpg"  alt=""></a>

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
                                <a href="Main.jsp"><img src="photo/logo2.jpg" WIDTH=200 HEIGHT=400 BORDER=0 class="img-circle" ></a>
                                <p class="adresse">2345, rue Le ciel<br>Montréal (Québec)  H7L3M8</p>
                                <p class="adresse">514 111-0000</p>
                            </div><!-- footer-col -->
                        </div><!-- span9 -->
                        <div class="span3">
                            <div class="footer-col">
                                <ul  class="menu">
                                    <li class="menu-item-1" ><a href="Main.jsp" >Acceuil</a></li>
                                    <li  class="menu-item-2"><a href="page1.jsp" >Qui sommes-nous?</a></li>
                                    <li  class="menu-item-3"><a href="page2.jsp" >Activités</a></li>
                                    <li  class="menu-item-3"><a href="#">Horaire</a></li>
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

