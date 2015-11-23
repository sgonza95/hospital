json.array!(@especialidads) do |especialidad|
  json.extract! especialidad, :id, :nombreespe, :sala
  json.url especialidad_url(especialidad, format: :json)
end
