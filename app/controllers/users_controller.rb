class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
    
    # GET users
    def index
        @users = User.all
        render json: @users.to_json(include: :favorites)
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