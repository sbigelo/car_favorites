class CarsController < ApplicationController

    def index
        render :json => Car.all, :include => :favorite
    end

    def destroy
        car = Car.find(params[:id])
        car.destroy
        # render json: {id: params[:id], message: "Record was successfully deleted"}
    end

    def create
        favorite = Favorite.find_by(name: params[:favorite])
        car = Car.create(name: params[:name], img: params[:img], favorite: favorite)
        render :json => car, :include => :favorite, :status => 201
    end

    private

    def car_params
        params.require(:car).permit(:name, :img, :favorite_id)
    end


end



