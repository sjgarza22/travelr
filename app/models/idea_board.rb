class IdeaBoard < ActiveRecord::Base
    has_many :ideas
    belongs_to :trip
    has_many :trip_users, through: :ideas
end