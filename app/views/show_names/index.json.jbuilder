json.array!(@show_names) do |show_name|
  json.extract! show_name, :id
  json.url show_name_url(show_name, format: :json)
end
