class RemoveUnnecessaryOrderIdColumnInProductsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :order_id, :integer
  end
end
