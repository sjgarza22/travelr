class AddNewColumnIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :trip_user_id, :integer
  end
end
