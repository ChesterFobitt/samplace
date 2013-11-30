class CreateEventsPlaces < ActiveRecord::Migration
  def change
    create_table :events_places, id: false do |t|
      t.integer :event_id
      t.integer :place_id
    end
  end
end
