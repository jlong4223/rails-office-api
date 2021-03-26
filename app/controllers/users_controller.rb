class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    
    # GET users
    def index
        @users = User.all
        render json: @users
    end

    # = testing custom route with getting users here as well
    def login
        @users = User.all
        render json: User.all
    end

    # GET user/id
    def show
        render json: @user
    end

    # POST's a new user
    def create
        @user = User.new(user_params)
        
        if @user.save
            render json: @user, status: :created, location: @user
        else
            render json: @user.errors, status: :unprocessable_entity
        end
    end
    
    # TODO create a create route for this method and install jwt gem:
    def authenticate_user
        user = User.find_for_database_authentication(email: params[:email])
        if user.valid_password?(params[:password])
            render json: payload(user)
        else
            render json: {errors: ['Invalid Username/Password']}, status: :unauthorized
        end
    end

    # PUT
    def update
        if @user.update(user_params)
            render json: @user
          else
            render json: @user.errors, status: :unprocessable_entity
          end
    end

    # DELETE
    def destroy
        @user.destroy
    end

    private

    def set_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end 
end