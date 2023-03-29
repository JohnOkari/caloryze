class MealSerializer < ActiveModel::Serializer
  attributes :food, :meal_type, :calories

  belongs_to :user
end
