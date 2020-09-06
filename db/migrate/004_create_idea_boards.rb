class CreateIdeaBoards < ActiveRecord::Migration[4.2]
    def change
        create_table :idea_boards do |t|
            t.string :name
            t.integer :trip_id

            t.timestamps null: false
        end
    end
end