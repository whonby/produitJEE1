
  <%@include file="entete.jsp" %>
   <%@include file="header.jsp" %>
   


    <div class="container">
      <div class="bs-docs-section">
     <div class="row">
     
     <div class="col-md-1"></div>
     <div class="col-md-10">
  <div class="card border-primary " >
  <div class="card-header">Information sur le produit</div>
  <div class="card-body" >
   
      <div class="row">
          <div class="col-lg-12" align="center">
            <div class="alert alert-success" >
              <strong>Felicitation !!! le produit a ete enregistre</strong>
            </div>
          </div>
        </div>
        
        <div class="form-group">
        <label>ID: </label>
        <label>${p.id}</label>
        </div>
        
         <div class="form-group">
        <label>Desisagnation:</label>
        <label>${produits.designation}</label>
        </div>
        
         <div class="form-group">
        <label>Prix:</label>
        <label>${produits.prix}</label>
        </div>
        
         <div class="form-group">
        <label>Quantite:</label>
        <label>${produits.quantite}</label>
        </div>
    
  </div>
 </div>
     
     </div>
     <div class="col-md-1"></div>
     </div>
     
     
      </div>


    </div>


<%@include file="footer.jsp" %>