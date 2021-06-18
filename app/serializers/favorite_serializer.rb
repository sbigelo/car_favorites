class FavoriteSerializer 
    include FastJsonapi::ObjectSerializer
    attributes :name
    has_many :cars
end