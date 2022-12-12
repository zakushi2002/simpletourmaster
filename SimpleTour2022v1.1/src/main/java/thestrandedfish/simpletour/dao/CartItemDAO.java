package thestrandedfish.simpletour.dao;

import thestrandedfish.simpletour.model.CartItem;

public interface CartItemDAO {
	void insert(CartItem item);
	void edit(CartItem item);
}
