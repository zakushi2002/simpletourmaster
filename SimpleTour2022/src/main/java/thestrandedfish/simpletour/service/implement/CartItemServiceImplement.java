package thestrandedfish.simpletour.service.implement;

import thestrandedfish.simpletour.dao.CartItemDAO;
import thestrandedfish.simpletour.dao.implement.CartItemDAOImplement;
import thestrandedfish.simpletour.model.CartItem;
import thestrandedfish.simpletour.service.CartItemService;

public class CartItemServiceImplement implements CartItemService{
	CartItemDAO cartItemDAO = new CartItemDAOImplement();
	@Override
	public void insert(CartItem item) {
		cartItemDAO.insert(item);
	}
	@Override
	public void edit(CartItem item) {
		cartItemDAO.edit(item);
	}
}
