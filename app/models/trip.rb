class Trip < ActiveRecord::Base
    has_many :users, through: :trip_user
end