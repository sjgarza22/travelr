class CreateTripUsers < ActiveRecord::Migration
    def change
        create_table trip_users do |t|
            t.string :user_type
            t.integer :user_id
            t.integer :trip_id

            t.timestamp null: false
        end
    end
end