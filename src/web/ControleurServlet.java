package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IProduit;
import dao.ProduitDaoImpl;
import metier.entities.Produit;
@WebServlet(name="cs",urlPatterns={"*.dev"})
public class ControleurServlet extends HttpServlet {
	private IProduit metier;
	
	@Override
	public void init() throws ServletException {
		metier=new ProduitDaoImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProduitModel model=new ProduitModel();
		String path=request.getServletPath();
		if(path.equals("/index.dev")) {
		List<Produit> produits=metier.produitsList();
		model.setProduits(produits);
		request.setAttribute("model", model);
		request.getRequestDispatcher("/produit.jsp").forward(request,response); 
		}
		else if(path.equals("/submit.dev")) {
			String motCle=request.getParameter("motCle");
			model.setMotCle(motCle);
			List<Produit> produits=metier.produitsParMc(motCle);
			model.setProduits(produits);
			request.setAttribute("model", model);
			request.getRequestDispatcher("/produit.jsp").forward(request,response);
		}else if(path.equals("/ajouter.dev")) {
			request.getRequestDispatcher("/SaissiProduit.jsp").forward(request,response);
		}else if(path.equals("/SaveProduit.dev") && (request.getMethod().equals("POST"))) {
			String designation=request.getParameter("designation");
			double prix=Double.parseDouble(request.getParameter("prix"));
			int quantite=Integer.parseInt(request.getParameter("quantite"));
			Produit p=metier.save(new Produit(designation, prix, quantite));
			request.setAttribute("produits", p);
			request.getRequestDispatcher("/Confirmation.jsp").forward(request,response);		
			
		}else if(path.equals("/Supprimer.dev")) {
			Long id=Long.parseLong(request.getParameter("sup"));
			metier.deleteProduit(id);
			
			response.sendRedirect("http://localhost:8080/TP_CAT//index.dev");
			
					
		}else if(path.equals("/Edite.dev")) {
			Long id=Long.parseLong(request.getParameter("edite"));
			Produit p=metier.getProduit(id);
			request.setAttribute("produits", p);
			request.getRequestDispatcher("/editeProduit.jsp").forward(request,response);	
			
					
		}else if(path.equals("/UpdateProduit.dev") && (request.getMethod().equals("POST"))) {
			Long id=Long.parseLong(request.getParameter("id"));
			String designation=request.getParameter("designation");
			double prix=Double.parseDouble(request.getParameter("prix"));
			int quantite=Integer.parseInt(request.getParameter("quantite"));
			Produit p =new Produit(designation, prix, quantite);
			p.setId(id);
			metier.update(p);
			response.sendRedirect("http://localhost:8080/TP_CAT//index.dev");	
			
		}
		else {
			request.getRequestDispatcher("/404.jsp").forward(request,response);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
