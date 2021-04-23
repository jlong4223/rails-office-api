class FavoritesController < ApplicationController
    before_action :set_favorite, only: [:show, :update, :destroy]
    
    # GET /favorites
    def index
        @favorites = Favorite.all
        render json: @favorites.to_json(include: :user)
    end

    #POST /favorites
    def create
        @favorite = Favorite.new(favorite_params)

        if @favorite.save
            render json: @favorite, status: :created, location: @favorite
        else
            render json: @favorite.errors, status: :unprocessable_entity
        end
    end

    private

    def set_favorite
        @favorite = Favorite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favorite_params
        params.require(:favorite).permit(:author, :quote, :user_id)
    end

end 