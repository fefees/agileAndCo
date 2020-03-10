<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${contextPath}/ressources/css/vendors/bootstrap.css">
    <link rel="stylesheet" href="${contextPath}/ressources/css/vendors/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/ressources/css/style.css"> 
   
    <title>connexion</title>
    
</head>

<body>
    <header>
        <div class="container">
            <div class="row">
                <!--barre-->
                <i class="icon fa fa-bars fa-2x"></i>
                <!--logo-->
                <div class="col-md-3 col-xs-12">
                    <div class="logo">
                        <h2>AVENTIX</h2>
                    </div>
                </div>
                <!--navigation-->
                <nav class="col-md-8 col-xs-12">
                    <ul class="nav-list">
                        <!--menu de la barre de navigation-->
                        <li class="liste"><a href="Accueil.html">Accueil</a></li>
                        <li class="liste"><a href="#">Description</a></li>
                        <li class="liste"><a href="#">Carte</a></li>
                        <li class="liste"><a href="Contact">Contact</a></li>
                        <li class="liste"><a href="connexion">Connexion</a></li>
                        <!--<form class="navbar-form navbar-right inline-form">
                        <div class="form-group">
                        <input type="search" class="input-sm form-control" placeholder="Recherche">
                        <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span></button>
                        </div>
                        </form>-->
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    
    <section class="sections home text-center">
        <div class="overlay">    
           <body>
            <div class="login">
              <div class="account-login">
               <h1>Connexion</h1>
               <form action="/connexionverif" class="login-form">
                  <div class="form-group">
                     <input type="text" name="login" placeholder="Identifiant" class="form-control">
                  </div>
                  <div class="form-group">
                     <input type="password" name="pwd" placeholder="Mot de passe"  class="form-control">
                  </div>
                  <div class="remember">
                     <label class="custom-checkbox">Se souvenir de moi
                     <input type="checkbox">
                     <span class="checkmark"></span>
                     </label>
                     <a href="#" class="pull-right">Mot de passe oublié ?</a>
                  </div>
                  <button type="submit" class="btn">Se connecter</button>
                  <p>Pas de compte ?<a href="/new_compte">Créez-en un</a></p>
               </form>
              </div>  
            </div>     
        </body>
       </div> 
    </section>
        
    <section class="section aproposdenous">
        <div class="container">
              <div class="section-header text-center">
                   <h2 class="section title">A propos de nous</h2>
                   <div class="line"><span></span></div> 
                   <p>Aventix propose aux entreprises une alternative aux tickets restaurants en papier en les remplaçant par des cartes à puces utilisables sur un réseau de plus de 40 000 commerçants partenaires</p>
              </div>      
        </div>
    </section>
    
    <div class="test"></div>
   
    <script src="${contextPath}/ressources/js/vendors/jquery-3.4.1.min.js"></script> 
    <script src="${contextPath}/ressources/js/vendors/bootstrap.js"></script>
    <script src="${contextPath}/ressources/js/main.js"></script>
</body>
</html>