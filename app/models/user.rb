class User < ApplicationRecord
    has_secure_password
    
    has_many :fav_beaches
    has_many :beaches, through: :fav_beaches

    validates :firstname, :lastname, :name, presence: true
    validates :name, uniqueness: true
end
