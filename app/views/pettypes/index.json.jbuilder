json.array!(@pettypes) do |pettype|
  json.extract! pettype, :id, :name
  json.url pettype_url(pettype, format: :json)
end
