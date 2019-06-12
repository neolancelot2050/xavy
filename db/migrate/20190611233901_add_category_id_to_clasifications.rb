class AddCategoryIdToClasifications < ActiveRecord::Migration[5.2]
  def change
    add_column :clasifications, :category_id, :integer
  end
end
