class Car < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    belongs_to :favorite
end
