class FavoritesController < ApplicationController

    def index
        render :json => Favorite.all.to_json, :include => :car
    end

end
