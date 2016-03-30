class Api::V1::Sighting < ActiveRecord::Base
  belongs_to :api_v1_birds
end
