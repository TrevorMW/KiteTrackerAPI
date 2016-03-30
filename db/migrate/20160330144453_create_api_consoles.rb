class CreateApiConsoles < ActiveRecord::Migration
  def change
    create_table :api_consoles do |t|

      

      t.timestamps null: false
    end
  end
end
