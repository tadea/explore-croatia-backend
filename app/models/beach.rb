class Beach < ApplicationRecord
    has_many :fav_beaches
    has_many :users, through: :fav_beaches
end
