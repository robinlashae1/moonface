class UsersController < ApplicationController
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def update
      find_user
        @user.update(user_params)
        render json: @user, status: :ok
    end

    def show
        user = find_user
        if user
          render json: user, include: ['user_services','school']
        else
          render json: { error: "Not authorized" }, status: :unauthorized
        end
      end

    private
    def find_user
      @user = User.find_by(id: params[:id])
  end

    def user_params
        params.permit(:username, :password, :password_confirmation, :name)
    end
end
