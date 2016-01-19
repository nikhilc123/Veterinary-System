json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :breed, :age, :weight, :lastvisit
  json.url pet_url(pet, format: :json)
end
