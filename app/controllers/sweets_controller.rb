class SweetsController < ApplicationController

    def index
        sweets = Sweet.all
        render json: sweets, status: 202
    end

    def show
        sweet = Sweet.find_by(id: params[:id])
        if sweet
            render json: sweet, status: 202
        else
            render json: {error: "Sweet not found"}, status: 404
        end
    end

end
