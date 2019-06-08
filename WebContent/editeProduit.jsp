
  <%@include file="entete.jsp" %>
   <%@include file="header.jsp" %>
   


    <div class="container">
      <div class="bs-docs-section">
     <div class="row">
     
     <div class="col-md-1"></div>
     <div class="col-md-10">
  <div class="card border-primary " >
  <div class="card-header">Modification de produit</div>
  <div class="card-body">
  <div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-10">
  
  <form action="UpdateProduit.dev" method="post">
  <div class="form-group">
   
   <input type="text" id="id"  name="id" class="form-control" value="${produits.id }" hidden="">
  
   </div>
   
   <div class="form-group">
   <label for="designation">Designation</label><br>
   <input type="text" id="designation"  name="designation" value="${produits.designation }" class="form-control">
  
   </div>
   
    <div class="form-group">
   <label for="prix" class="form-control-label">Prix</label><br>
   <input type="text" id="prix"  name="prix" class="form-control" value="${produits.prix }">
  
   </div>
   
    <div class="form-group">
   <label for="taux">Quantite</label><br>
   <input type="text" id="taux" name="quantite" class="form-control" value="${produits.quantite }">
  
   </div>
   
    <button type="submit" class="btn btn-primary col-md-4" >Ajouter</button>
   </form>
  </div>
  <div class="col-md-1"></div>
  </div>
   
    
 
    
  </div>
 </div>
     
     </div>
     <div class="col-md-1"></div>
     </div>
     
     
      </div>


    </div>


<%@include file="footer.jsp" %>