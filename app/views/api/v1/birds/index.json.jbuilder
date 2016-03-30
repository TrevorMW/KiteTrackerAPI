json.array!(@api_v1_birds) do |api_v1_bird|
  json.extract! api_v1_bird, :id
  json.url api_v1_bird_url(api_v1_bird, format: :json)
end
