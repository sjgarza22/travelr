class CreateTrips < ActiveRecord::Migration
    def change
        create_table :trips do |t|
            t.string :title

            t.timestamp null: false
        end
    end
end