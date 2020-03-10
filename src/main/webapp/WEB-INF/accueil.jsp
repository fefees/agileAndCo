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
    
    <title>accueil</title>
    
</head>
<body>
  
    <header>
        <div class="container">
            <div class="row">
                <i class="icon fa fa-bars fa-2x"></i>
                <!--logo-->
                <div class="col-md-3 col-xs-12">
                    <div class="logo">
                        <h2>AVENTIX</h2>
                    </div> 
                </div>
            <div class="row">
                    <div class="btn-group">
                         <button type="submit" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-home"></span></button>
                          <ul class="dropdown-menu">
                             <li><a href="Employeurs.html" title="Lien 1">Employeurs</a></li>
                             <li><a href="Commercants.html" title="Lien 2">Commerçants</a></li>
                             <li><a href="Salaries.html" title="Lien 3">Salariés</a></li>
                          </ul>
                        </div> 
                    </div> 
                </div>  
            <form class="navbar-form navbar-right inline-form">
                <div class="form-group">           
                    <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-user"></span></button>               
                </div> 
             </form>
         </div>     
                           
                <!--navigation-->
                <nav class="col-md-8 col-xs-12">
                       <ul class="nav-list">
                        <li class="liste"><a href="/contact">Contact</a></li>
                        <li class="liste"><a href="/connexion">Connexion</a></li>                  

                        
                        <!--Barre de recherche
                        <form class="navbar-form navbar-right inline-form">
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
           <div class="container">
               <div class="home-content">
                    <h3 class="home-title">Optez pour la carte restaurant !</h3>
                    <p class="lead home-desk">
                        Pour les entreprises et les commerçants
                    </p>
                        <a href="Employeurs.html" button class="btn button"><i class="icon icon-check icon-lg"></i>Employeurs</a>
                        <a href="Commercants.html" button class="btn button"><i class="icon icon-check icon-lg"></i>Commerçants</a>
                        <a href="Salaries.html" button class="btn button"><i class="icon icon-check icon-lg"></i>Salariés</a>
                </div>
            </div>
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