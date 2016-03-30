class CreateApiV1Birds < ActiveRecord::Migration
  def change
    create_table :api_v1_birds do |t|

      t.string     :bird_name
      t.string     :bird_scientific_name

      t.string     :bird_genus
      t.boolean    :bird_endangered

      t.timestamps null: false
    end
  end
end
