json.array!(@medico_pacientes) do |medico_paciente|
  json.extract! medico_paciente, :id, :medico_id, :paciente_id
  json.url medico_paciente_url(medico_paciente, format: :json)
end
