package thestrandedfish.simpletour.service;

import thestrandedfish.simpletour.model.CartItem;

public interface CartItemService {
	void insert(CartItem item);
	void edit(CartItem item);
}
