class AddColumnToIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :idea_board_id, :integer
  end
end
