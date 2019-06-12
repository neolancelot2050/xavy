class AddDifficultylevelToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :difficultylevel, :string
  end
end
