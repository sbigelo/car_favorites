class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :favorite_id
      t.timestamps
    end
  end
end
