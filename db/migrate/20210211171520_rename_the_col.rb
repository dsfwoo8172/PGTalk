class RenameTheCol < ActiveRecord::Migration[6.0]
  def change
    rename_column :stores, :store_latitude, :store_lat
    rename_column :stores, :store_longitude, :store_lng
  end
end
