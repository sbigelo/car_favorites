class CarSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :img, :favorite_id
    belongs_to :favorite

end