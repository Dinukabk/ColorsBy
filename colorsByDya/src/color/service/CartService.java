package color.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import color.model.*;
import color.util.DBConnect;

public class CartService {

	public void addCart(Cart cart) {
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			connection = DBConnect.getDBConnection();
			
			//insert value
			preparedStatement = connection.prepareStatement("insert into cart (painting_id,quantity,userid) values (?,?,?)");
			preparedStatement.setInt(1, cart.getPainting_id());
			preparedStatement.setInt(2, cart.getQuantity());
			preparedStatement.setString(3, cart.getUserId());
			preparedStatement.execute();
			preparedStatement.close();
			connection.close();
				
			
		}catch (ClassNotFoundException | SQLException  e) {
			System.out.println(e.getMessage());
		}

	}
//Display Cart	
	public ArrayList<Cart> getCart(String userid) {
		
		ArrayList<Cart> cartList = new ArrayList<Cart>();
		Connection connection;
		PreparedStatement preparedStatement;
		try {
			
			connection = DBConnect.getDBConnection();
			preparedStatement = connection.prepareStatement("SELECT c.*,p.title,p.price, p.image_url , a.name FROM painting p , artist a , cart c WHERE p.painting_id=c.painting_id and p.a_artist_id=a.artist_id and c.userid=?");
			preparedStatement.setString(1, userid);
			ResultSet resultSet = preparedStatement.executeQuery();
			
			while (resultSet.next()) {
				
				Cart cart = new Cart();
				
				cart.setId(Integer.parseInt(resultSet.getString(1)));
				cart.setPainting_id(resultSet.getInt(2));
				cart.setQuantity(resultSet.getInt(3));
				cart.setUserId(resultSet.getString(4));
				cart.setName(resultSet.getString(5));
				cart.setPrice(resultSet.getDouble(6));
				cart.setImage(resultSet.getString(7));
				cart.setArtist(resultSet.getString(8));
				
				cartList.add(cart);
				
			}
			
			preparedStatement.close();
			connection.close();
			
		}catch (ClassNotFoundException | SQLException  e) {
	
			System.out.println(e.getMessage());
		}
	
		return cartList;
	}
//Update Cart
	public void update(int q,int id) {
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			connection = DBConnect.getDBConnection();
				
			preparedStatement = connection.prepareStatement("UPDATE cart SET quantity=? where id=?");
			preparedStatement.setInt(1, q);
			preparedStatement.setInt(2, id);
			preparedStatement.execute();
			preparedStatement.close();
			connection.close();
				
		}catch (ClassNotFoundException | SQLException  e) {
			System.out.println(e);
		}
		
	}
//Delete Cart
	public void deleteCart(int id) {
		
		Connection connection;
		PreparedStatement preparedStatement;
		
		try {
			connection = DBConnect.getDBConnection();
			
			 
			preparedStatement = connection.prepareStatement("DELETE FROM cart WHERE id=?");
			preparedStatement.setInt(1, id);
			preparedStatement.execute();
			
		
		}catch (ClassNotFoundException | SQLException  e) {
		}
		
	}
}
