package dao;

import java.util.List;

import metier.entities.Produit;

public class TestDAO1 {

	public static void main(String[] args) {
		ProduitDaoImpl dao=new ProduitDaoImpl();
        System.out.println("Récherche de produit :");
		List<Produit> produits=dao.produitsParMc("r");
		
		for(Produit p :produits) {
			System.out.println(p.toString());
		}
		

	}

}
