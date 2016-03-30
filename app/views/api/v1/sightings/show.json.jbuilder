json.sighting do

  json.bird do
    json.name             @bird.bird_name
    json.scientific_name  @bird.bird_scientific_name
    json.endangered            @bird.bird_endangered
  end

  json.activity                @sighting.sighting_activity
  json.spotted_at              @sighting.created_at
  json.has_nest                @sighting.sighting_has_nest
end
