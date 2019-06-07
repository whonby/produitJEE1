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
		
		String path=request.getServletPath();
		if(path.equals("/index.dev")) {
		request.getRequestDispatcher("/produit.jsp").forward(request,response); 
		}
		else if(path.equals("/submit.dev")) {
			String motCle=request.getParameter("motCle");
			ProduitModel model=new ProduitModel();
			model.setMotCle(motCle);
			List<Produit> produits=metier.produitsParMc(motCle);
			model.setProduits(produits);
			request.setAttribute("model", model);
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}

}
