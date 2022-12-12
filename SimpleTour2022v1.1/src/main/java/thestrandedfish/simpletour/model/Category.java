package thestrandedfish.simpletour.model;

public class Category {
	// Thuộc tính
		private int categoryID;
		private String categoryName;
		private int statusCategory;
		public int getCategoryID() {
			return categoryID;
		}
		public void setCategoryID(int categoryID) {
			this.categoryID = categoryID;
		}
		public String getCategoryName() {
			return categoryName;
		}
		public void setCategoryName(String categoryName) {
			this.categoryName = categoryName;
		}
		public int getStatusCategory() {
			return statusCategory;
		}
		public void setStatusCategory(int statusCategory) {
			this.statusCategory = statusCategory;
		}
		public Category(int categoryID, String categoryName, int statusCategory) {
			super();
			this.categoryID = categoryID;
			this.categoryName = categoryName;
			this.statusCategory = statusCategory;
		}
		
}
