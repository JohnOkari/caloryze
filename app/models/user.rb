class User < ApplicationRecord
    has_secure_password
    has_many :meals

    validates :username, presence: true, uniqueness: true
end
