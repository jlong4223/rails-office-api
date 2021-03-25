class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    
    # GET users
    def index
        @users = User.all
        render json: @users
    end

    # GET user/id
    def show
        render json: @user
    end

    def create
        @user = User.new(user_params)

        if @user.save
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end

    def update
        if @user.update(office_params)
            render json: @user
          else
            render json: @user.errors, status: :unprocessable_entity
          end
    end

    def destroy
        @user.destroy
    end

    private

    # TODO hash password here? and add to the before_action?

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end 
end