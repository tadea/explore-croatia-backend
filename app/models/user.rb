class User < ApplicationRecord
    has_many :fav_beaches
    has_many :beaches, through: :fav_beaches
end
