class CreateTrips < ActiveRecord::Migration[4.2]
    def change
        create_table :trips do |t|
            t.string :title

            t.timestamps null: false
        end
    end
end