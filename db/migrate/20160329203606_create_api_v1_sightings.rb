class CreateApiV1Sightings < ActiveRecord::Migration
  def change
    create_table :api_v1_sightings do |t|

      t.integer   :sighting_bird_type
      t.string    :sighting_bird_age
      t.string    :sighting_activity
      t.boolean   :sighting_has_nest

      t.float     :sighting_latitude
      t.float     :sighting_longitude

      t.timestamps null: false
    end
  end
end
