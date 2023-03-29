class MealsController < ApplicationController
    

    #show all meals
    def index
        meals = Meal.all
        render json: meals, status: :ok
    end
    
    #show a single meal
    def show
        meal = (find_meal)
        if meal
            render json: meal, status: :ok
        else
            render json: { error: "Meal not found" }, status: :not_found
        end
    end


    # update a meal
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


    # create a meal
    def create
        meal = Meal.new(meal_params)
        if meal.save
            render json: meal
        else
            render json: { errors: meal.errors.full_messages }, status: :unprocessable_entity
        end
    end

    #delete a meal
    def destroy
        meal = (find_meal)
        if meal
            meal.destroy
            render json: { message: "Meal deleted successfully" }, status: :ok
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
