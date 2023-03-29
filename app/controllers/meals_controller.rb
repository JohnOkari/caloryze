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

    def update
        meal = (find_meal)
        if meal
            if meal.update(meal_params)
                render json: meal
                
            else
                render json: { errors: meal.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: { error: "Meal not found" }, status: :not_found
        end
    end

    

    private

    def find_meal
        Meal.find_by(id: params[:id])
    end

    def meal_params
        params.permit(:food, :meal_type, :calories)
    end
end
