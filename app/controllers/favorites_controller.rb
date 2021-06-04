class FavoritesController < ApplicationController

    def index
        render :json => Favorite.all.to_json
    end

end
