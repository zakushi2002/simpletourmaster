package thestrandedfish.simpletour.service.implement;

import java.util.List;

import thestrandedfish.simpletour.dao.CartDAO;
import thestrandedfish.simpletour.dao.implement.CartDAOImplement;
import thestrandedfish.simpletour.model.Cart;
import thestrandedfish.simpletour.service.CartService;

public class CartServiceImplement implements CartService{
	CartDAO cartDAO = new CartDAOImplement();
	@Override
	public Cart getCartByID(int idCart) {
		return cartDAO.getCartByID(idCart);
	}

	@Override
	public void insert(Cart cart) {
		cartDAO.insert(cart);	
	}

	@Override
	public void edit(Cart cart) {
		cartDAO.edit(cart);
	}

	@Override
	public void delete(Cart cart) {
		// TODO Auto-generated method stub
		cartDAO.delete(cart);
	}

	@Override
	public List<Cart> getAllCartOfUser(String phoneAccount) {
		
		return cartDAO.getAllCartOfUser(phoneAccount);
	}

}
