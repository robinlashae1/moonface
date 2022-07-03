class User < ApplicationRecord
    has_many :products
    has_many :blogs

    has_secure_password   
    validates :username, presence: true
end
