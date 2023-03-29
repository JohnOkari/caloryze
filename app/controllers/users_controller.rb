class UsersController < ApplicationController
    before_action :authorize

    def show
        render json: @current_user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end


  private

  def user_params
    params.permit(:username, :password, :password_cornfirmation)
  end

  def authorize
    @current_user = User.find_by(id: session[:user_id])

    render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
  end

  

end
