class FavoritesController < ApplicationController

    def index
        # favorites = Favorite.all    
        # render json: FavoriteSerializer.new(favorites)

        render :json => Favorite.all.to_json, :include => :car
    end

end
