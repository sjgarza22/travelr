class Trip < ActiveRecord::Base
    has_one :idea_board
    has_many :trip_users
    has_many :users, through: :trip_user
    has_many :ideas, through: :idea_board

    # Add validations for Title:String
    validates :title, presence: true

    # Add accepts_nested_attributes for :trip_user(s)
    accepts_nested_attributes_for :trip_users
    accepts_nested_attributes_for :idea_board

    # Add setter method for trip_users attributes
    def trip_users_attributes=(trip_user_attributes)
        if !(trip_user_attributes['user_id'].blank?)
            trip_user = TripUser.find_or_create_by(trip_user_attributes)
            self.trip_users << trip_user
        end
    end

    def user_type_selections
        user_types = ['Administrator', 'Contributer']
    end
end