class Idea < ActiveRecord::Base
    scope :filter_by_user,->  (user_id) { where("user_id = ?", user_id) }

    belongs_to :idea_board
    belongs_to :trip_user

end