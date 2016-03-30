json.sightings do
  json.array!(@sightings) do |sighting|
    json.extract! sighting, :id

    json.extract! sighting, :sighting_latitude
    json.extract! sighting, :sighting_longitude
    #json.url api_v1_sighting_url(api_v1_sighting, format: :json)
  end
end
