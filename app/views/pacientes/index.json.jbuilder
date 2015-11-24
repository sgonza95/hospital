json.array!(@pacientes) do |paciente|
  json.extract! paciente, :id, :nombrepaciente, :apepaciente
  json.url paciente_url(paciente, format: :json)
end
