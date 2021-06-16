class CarsController < ApplicationController

    def index
        render :json => Car.all, :include => :favorite
    end

    def destroy
        car = Car.find(params[:id]).destroy
        render :json => {id: params[:id], message: "Record was successfully deleted"}
        # if  car.destroy
        # render :json => {id: params[:id], message: "Record was successfully deleted"}
        # else
        #     render :json => {message: "error here"}
        # end
    end

    def create
       
        favorite = Favorite.find_by(name: params[:favorite])
        car = Car.create(name: params[:name], favorite: favorite)
        render :json => car, :include => :favorite, :status => 201
       
    end


end
