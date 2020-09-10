class User < ActiveRecord::Base
    has_many :trip_users
    has_many :trips, through: :trip_user

    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, length: { minimum: 2 }, uniqueness: true
    validates :password, presence: true

    has_secure_password
end