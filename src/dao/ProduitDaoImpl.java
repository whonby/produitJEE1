package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import metier.entities.Produit;

public class ProduitDaoImpl implements IProduit {

	@Override
	public Produit save(Produit p) {
		Connection connection=SingletonConnection.getConnection();
		try {
			PreparedStatement ps =connection.prepareStatement("INSERT INTO produits(designation,prix,quantite) VALUES(?,?,?)");
			ps.setString(1, p.getDesignation());
			ps.setDouble(2, p.getPrix());
			ps.setInt(3, p.getQuantite());
			ps.executeUpdate();
			
			PreparedStatement ps2 =connection.prepareStatement("SELECT MAX(id) as MAX_ID FROM produits");
			ResultSet rs=ps2.executeQuery();
			if(rs.next()) {
				p.setId(rs.getLong("MAX_ID"));
			}
			
			ps.close();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return p;
	}

	@Override
	public List<Produit> produitsParMc(String mc) {
		List<Produit> prods =new ArrayList<Produit>();
		Connection connection=SingletonConnection.getConnection();
		
		try {
			PreparedStatement ps = connection.prepareStatement("select * from produits where designation like ?");
			ps.setString(1, "%" + mc + "%");
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Produit p=new Produit();
				p.setId(rs.getLong("id"));
				p.setDesignation(rs.getString("designation"));
				p.setPrix(rs.getDouble("prix"));
				p.setQuantite(rs.getInt("quantite"));
				prods.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return prods ;
	}

	@Override
	public Produit getProduit(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Produit update(Produit p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteProduit(Long id) {
		// TODO Auto-generated method stub
		
	}

}
