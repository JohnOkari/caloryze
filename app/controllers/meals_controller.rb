class MealsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # skip_before_action :authorize, only: :create
    # before_action :authorize

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


    # create a meal
    def create
        meal = Meal.create!(meal_params)
        render json: meal, status: :created
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


    #delete a meal
    def destroy
        meal = (find_meal)
        if meal.save
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
        params.permit(:food, :meal_type, :calories, :user_id)
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
