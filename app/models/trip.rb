class Trip < ActiveRecord::Base
    has_many :users, through: :trip_user

    # Add validations for Title:String

    # Add accepts_nested_attributes for :trip_user(s)
end