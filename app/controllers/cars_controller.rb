class CarsController < ApplicationController

    def index
        render :json => Car.all, :include => :favorite
    end

end
