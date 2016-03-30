json.array!(@api_consoles) do |api_console|
  json.extract! api_console, :id
  json.url api_console_url(api_console, format: :json)
end
