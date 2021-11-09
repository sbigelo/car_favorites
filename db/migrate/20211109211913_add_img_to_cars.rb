class AddImgToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :img, :string
  end
end
