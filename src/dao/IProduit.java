package dao;

import java.util.List;

import metier.entities.Produit;

public interface IProduit {

	public Produit save(Produit p);
	public List<Produit> produitsParMc(String mc);
	public List<Produit> produitsList();
	public Produit getProduit(Long id);
	public Produit update(Produit p);
	public void deleteProduit(Long id);
}
