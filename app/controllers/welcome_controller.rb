class WelcomeController < ApplicationController
    def index
        render json: {status: 200, message: "Welcome to the Office Quotes API", created_by: "Jared Long", routes: "/offices"}
    end 
end
