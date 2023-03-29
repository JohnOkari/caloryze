class Meal < ApplicationRecord
    belongs_to :user

    validates :food, presence: true, length: {minimum: 5}
end
