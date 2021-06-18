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

        
    #    car = Car.new(car_params)
    #     if car.save
    #       render json: CarSerializer.new(car)
    #     else
    #       render json: {message: "oh no"}
    #     end
        favorite = Favorite.find_by(name: params[:favorite])
        car = Car.create(name: params[:name], favorite: favorite)
        render :json => car, :include => :favorite, :status => 201
       
    end

    private

    def car_params
        params.require(:car).permit(:name, :favorite_id)
    end


end
