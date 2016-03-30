class Api::V1::Sighting < ActiveRecord::Base
  has_one                       :api_v1_bird
  accepts_nested_attributes_for :api_v1_bird


end
