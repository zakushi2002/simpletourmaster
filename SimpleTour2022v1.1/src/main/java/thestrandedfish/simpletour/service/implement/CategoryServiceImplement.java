package thestrandedfish.simpletour.service.implement;

import java.util.List;

import thestrandedfish.simpletour.dao.CategoryDAO;
import thestrandedfish.simpletour.dao.implement.CategoryDAOImplement;
import thestrandedfish.simpletour.model.Category;
import thestrandedfish.simpletour.service.CategoryService;

public class CategoryServiceImplement implements CategoryService{
	CategoryDAO categoryDAO = new CategoryDAOImplement();
	@Override
	public List<Category> getAll() {
		
		// TODO Auto-generated method stub
		return categoryDAO.getAll();
	}

}
