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
    <title>new_compte</title>
</head>
<body>
  
    <header>
        <div class="container">
            <div class="row">

                <i class="icon fa fa-bars fa-2x"></i>

                <div class="col-md-3 col-xs-12">
                    <div class="logo">
                        <h2>AVENTIX</h2>
                    </div>
                </div>
                
                <nav class="navbar navbar">
                    <div class="container-fluid">

                        <ul class="nav navbar-nav">
                          <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <span class="glyphicon glyphicon-home"></span> Accueil</a>
                                    <ul class="dropdown-menu">
                                      <li><a href="Employeurs.html">Employeurs</a></li>
                                      <li><a href="Salaries.html">Salariés</a></li>
                                      <li><a href="Commercants.html">Commerçants</a></li>
                                    </ul>
                          <!--</li>
                          <li><a href="#"> Présentation</a></li>-->
                          <li><a href="Presentation.html"><span class="glyphicon glyphicon-credit-card"></span>  Présentation</a></li>
                          <li><a href="Reseau.html"><span class="glyphicon glyphicon-search"></span> Réseau partenaire</a></li>
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right">                      
                          <li><a href="Contact.html"><span class="glyphicon glyphicon-envelope"></span> Nous contacter</a></li>
                          <li><a href="Connexion.html"><span class="glyphicon glyphicon-user"></span> Se connecter</a></li>
                        </ul>
                    </div>
                </nav> 
            </div>
        </div>
    </header>
    
    <section class="sections home text-center">
        <div class="overlay">    
           <body>
            <div class="login">
              <div class="account-login">
               <h1>Créer son compte</h1>
<form:form action="/new_compte" modelAttribute="user">
  <div class="form-group">
    <label for="inputAddress">Raison sociale</label>
    <form:input type="text" path="nomEntreprise" class="form-control" id="inputAddress" placeholder="Nom de l'entreprise" />
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <form:input type="text" path="siret" class="form-control" placeholder="SIRET" />
    </div>
    <div class="form-group col-md-6">
      <form:input type="text" path="domaine" class="form-control" placeholder="Domaine" />
    </div>
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <form:input type="email" path="mail" class="form-control" id="inputEmail4" placeholder="Email" />
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Password</label>
      <form:input type="password" path="motDePasse" class="form-control" id="inputPassword4" placeholder="Password" />
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <form:input type="text" path="adresse" class="form-control" id="inputAddress" placeholder="1234 Main St" />
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Ville</label>
      <form:input type="text" path="ville" class="form-control" id="inputCity" />
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">Pays</label>
      <form:input type="text" path="pays" class="form-control" id="inputState" />
    </div>
    <div class="form-group col-md-4">
      <label for="inputZip">Code postal</label>
      <form:input type="number" path="codePostal" class="form-control" id="inputZip" />
    </div>
  </div>
  <form:input type="hidden" path="id"/>
  <form:input type="hidden" path="role"/>
  <form:input type="hidden" path="matricule"/>
  <button type="submit" class="btn btn-primary btn-xs">Sign in</button>
</form:form>
                </div>
            </div>
         </body>
        </div> 
    </section>
        
    <section class="section aproposdenous">
        <div class="container">
              <div class="text-center">
                   <h2 class="section title">A propos de nous</h2>
                   <div class="line"><span></span></div> 
                   <p class="paragraph">Aventix propose aux entreprises une alternative aux tickets restaurants en papier en les remplaçant par des cartes à puces utilisables sur un réseau de plus de 40 000 commerçants partenaires</p>
              </div>      
        </div>
    </section>
    
    <div class="test"></div>
   
    <script src="${contextPath}/ressources/js/vendors/jquery-3.4.1.min.js"></script> 
    <script src="${contextPath}/ressources/js/vendors/bootstrap.js"></script>
    <script src="${contextPath}/ressources/js/main.js"></script>
</body>
</html>
    