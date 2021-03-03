class CreateStores < ActiveRecord::Migration[6.0]
  def change
    create_table :stores do |t|
      t.decimal :store_latitude, precision: 10, scale: 6
      t.decimal :store_longitude, precision: 10, scale: 6
      t.string :store_name

      t.timestamps
    end
    add_index :stores, %i[store_latitude store_longitude]
  end
end
