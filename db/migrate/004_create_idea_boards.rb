class CreateIdeaBoards < ActiveRecord::Migration
    def change
        t.string :name
        t.integer :trip_id

        t.timestamp null: false
    end
end