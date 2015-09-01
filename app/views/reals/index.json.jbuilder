json.array!(@reals) do |real|
  json.extract! real, :id
  json.url real_url(real, format: :json)
end
