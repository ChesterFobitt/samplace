class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.float :price_per_hour
      t.string :description
      t.timestamps
    end
  end
end
