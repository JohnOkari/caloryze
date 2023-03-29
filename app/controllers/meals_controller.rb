class MealsController < ApplicationController
    
    def index
    meals = Meal.all
    render json: meals 
    end
    
    def show
        meal = (find_meal)
        if meal
            render json: meal
        else
            render json: { error: "Meal not found" }, status: :not_found
        end
    end

    private

    def find_meal
        Meal.find_by(id: params[:id])
    end
end
