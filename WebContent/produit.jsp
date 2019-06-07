<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Gestion PRODUIT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="css/custom.css">
    
    <style type="text/css">
    body {
	margin: -100px;
}
    </style>
  </head>
  <body>
    <div class="navbar navbar-expand-lg fixed-top navbar-dark bg-primary">
      <div class="container">
        <a href="http://localhost:8080/TP_CAT/index.dev" class="navbar-brand">PROJET</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
        </div>
      </div>
    </div>


    <div class="container">
      <div class="bs-docs-section">
     <div class="row">
     
     <div class="col-md-1"></div>
     <div class="col-md-10">
  <div class="card border-primary " >
  <div class="card-header">Liste des produits</div>
  <div class="card-body">
   <form action="submit.dev" method="get">
   <div class="form-group">
   <label for="seach">Mot clé</label>
   <input type="text" id="seach" class="" name="motCle">
   <button type="submit" class="btn btn-primary" >search</button>
   </div>
   </form>
    
    <table class="table">
     <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Désignation</th>
      <th scope="col">Prix</th>
      <th scope="col">Quantité</th>
    </tr>
  </thead>
    <tbody>
    
    <c:forEach items="${model.produits}" var="p">
        <tr>
        <td>${p.id}</td>
         <td>${p.designation}</td>
          <td>${p.prix}</td>
           <td>${p.quantite}</td>
        </tr>
    </c:forEach>
    
    </tbody>
    
    </table>
    
  </div>
 </div>
     
     </div>
     <div class="col-md-1"></div>
     </div>
     
     
      </div>


    </div>


    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
  </body>
</html>
