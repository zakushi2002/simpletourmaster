package thestrandedfish.simpletour.dao;

import java.util.List;

import thestrandedfish.simpletour.model.Cart;

public interface CartDAO {
	Cart getCartByID(int idCart);
	void insert(Cart cart);
	void edit(Cart cart);
	void delete(Cart cart);
	List<Cart> getAllCartOfUser(String phoneAccount);
}
