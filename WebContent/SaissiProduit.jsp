
  <%@include file="entete.jsp" %>
   <%@include file="header.jsp" %>
   


    <div class="container">
      <div class="bs-docs-section">
     <div class="row">
     
     <div class="col-md-1"></div>
     <div class="col-md-10">
  <div class="card border-primary " >
  <div class="card-header">Enregistrement de produit</div>
  <div class="card-body">
  <div class="row">
  <div class="col-md-1"></div>
  <div class="col-md-10">
  
  <form action="SaveProduit.dev" method="post">
   <div class="form-group">
   <label for="designation">Designation</label><br>
   <input type="text" id="designation"  name="designation" class="form-control">
  
   </div>
   
    <div class="form-group">
   <label for="prix" class="form-control-label">Prix</label><br>
   <input type="text" id="prix"  name="prix" class="form-control">
  
   </div>
   
    <div class="form-group">
   <label for="taux">Quantite</label><br>
   <input type="text" id="taux" name="quantite" class="form-control">
  
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