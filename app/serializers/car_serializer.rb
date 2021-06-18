class CarSerializer
    include FastJsonapi::ObjectSerializer
    attributes :name, :favorite_id
    belongs_to :favorite

end