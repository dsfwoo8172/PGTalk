class AddColToStore < ActiveRecord::Migration[6.0]
  def up
    change_column :stores, :store_lat, :float
    change_column :stores, :store_lng, :float
    rename_column :stores, :store_lat, :latitude
    rename_column :stores, :store_lng, :longitude
    add_column :stores, :address, :string
  end

  def down
    change_column :stores, :store_lat, :decimal
    change_column :stores, :store_lng, :decimal
    remove_column :stores, :address
  end
end
