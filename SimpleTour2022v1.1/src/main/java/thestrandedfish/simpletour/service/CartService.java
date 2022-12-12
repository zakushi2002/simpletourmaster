package thestrandedfish.simpletour.service;

import java.util.List;

import thestrandedfish.simpletour.model.Cart;

public interface CartService {
	Cart getCartByID(int idCart);
	void insert(Cart cart);
	void edit(Cart cart);
	void delete(Cart cart);
	List<Cart> getAllCartOfUser(String phoneAccount);
}
