
  <%@include file="entete.jsp" %>
   <%@include file="header.jsp" %>
   


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
   <label for="seach">Mot cle</label>
   <input type="text" id="seach" class="" name="motCle">
   <button type="submit" class="btn btn-primary" >search</button>
   </div>
   </form>
    
    <table class="table">
     <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Designation</th>
      <th scope="col">Prix</th>
      <th scope="col">Quantite</th>
       <th scope="col"></th>
        <th scope="col"></th>
    </tr>
  </thead>
    <tbody>
    
    <c:forEach items="${model.produits}" var="p">
        <tr>
        <td>${p.id}</td>
         <td>${p.designation}</td>
          <td>${p.prix}</td>
           <td>${p.quantite}</td>
            <td><a href="http://localhost:8080/TP_CAT/Edite.dev?edite=${p.id}" class="btn btn-info">Edit</a></td>
             <td><a href="http://localhost:8080/TP_CAT/Supprimer.dev?sup=${p.id}" class="btn btn-danger" onclick="return confirm('Etes vous sûre de vouloire supprimer cet article?')">Supprimer</a></td>
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


<%@include file="footer.jsp" %>