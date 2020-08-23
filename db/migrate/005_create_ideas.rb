class CreateIdeas < ActiveRecord::Migration
    def change
        create_table :ideas do |t|
            t.string :title
            t.text :about
            t.currency :price # Check if double or float

            t.timestamp null: false
        end
    end
end