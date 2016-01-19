json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :customer, :pet, :reminder, :reason, :date
  json.url appointment_url(appointment, format: :json)
end
