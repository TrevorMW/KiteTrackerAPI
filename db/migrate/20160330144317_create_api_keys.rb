class CreateApiKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|

      t.string    :api_access_token

      t.timestamps null: false
    end
  end
end
