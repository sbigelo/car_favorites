class CarsController < ApplicationController

    def index
        render :json => Car.all.to_json
    end

end
