json.array!(@shows) do |show|
  json.extract! show, :id, :name, :season, :year, :format
  json.url show_url(show, format: :json)
end
