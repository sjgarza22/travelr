class TripUser < ActiveRecord::Base
    belongs_to :trip
    belongs_to :user
    has_many :ideas

    def user_type_selections
        user_types = ['Administrator', 'Contributer']
    end
end