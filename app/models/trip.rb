class Trip < ActiveRecord::Base
    has_many :trip_users
    has_many :users, through: :trip_user

    # Add validations for Title:String
    validates :title, presence: true

    # Add accepts_nested_attributes for :trip_user(s)
    accepts_nested_attributes_for :trip_users

    def user_type_selections
        user_types = ['Administrator', 'Contributer']
    end
end