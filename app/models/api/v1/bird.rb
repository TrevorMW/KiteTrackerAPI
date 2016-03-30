class Api::V1::Bird < ActiveRecord::Base
  has_many :api_v1_sightings
end
