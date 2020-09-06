class IdeaBoard < ActiveRecord::Base
    has_many :ideas
    belongs_to :trip
end