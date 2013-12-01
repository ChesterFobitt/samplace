class CreateFacilitiesPlaces < ActiveRecord::Migration
  def change
    create_table :facilities_places, id: false do |t|
      t.integer :facility_id
      t.integer :place_id
    end
  end
end
