class Car < ApplicationRecord
    validates :name, uniqueness: true
    belongs_to :favorite
end
