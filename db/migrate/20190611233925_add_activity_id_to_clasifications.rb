class AddActivityIdToClasifications < ActiveRecord::Migration[5.2]
  def change
    add_column :clasifications, :activity_id, :integer
  end
end
