class MealSerializer < ActiveModel::Serializer
  attributes :id, :food, :meal_type, :calories

  belongs_to :user
end
