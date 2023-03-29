class UsersController < ApplicationController
    before_action :authorize

    def show
        render json: @current_user
    end

    


  private

  def authorize
    @current_user = User.find_by(id: session[:user_id])

    render json: { errors: ["Not authorized"] }, status: :unauthorized unless @current_user
  end

  

end
