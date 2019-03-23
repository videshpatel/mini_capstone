class RenameTableProductCategoryToCategoryProduct < ActiveRecord::Migration[5.2]
  def change
    rename_table :product_categories, :category_products
  end
end
