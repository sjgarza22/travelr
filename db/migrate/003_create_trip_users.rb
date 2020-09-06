class CreateTripUsers < ActiveRecord::Migration[4.2]
    def change
        create_table :trip_users do |t|
            t.string :user_type
            t.integer :user_id
            t.integer :trip_id

            t.timestamps null: false
        end
    end
end