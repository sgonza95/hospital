json.array!(@medicos) do |medico|
  json.extract! medico, :id, :nombremedico, :apemedico
  json.url medico_url(medico, format: :json)
end
