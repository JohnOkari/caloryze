class MealSerializer < ActiveModel::Serializer
  attributes :food, :meal_type, :calories
end
