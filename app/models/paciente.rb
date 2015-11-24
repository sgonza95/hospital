class Paciente < ActiveRecord::Base
  has_many :medico_paciente
  has_many :medico, :through => :medico_paciente

  validates :nombrepaciente , presence: true , confirmation: true
  validates :nombrepaciente_confirmation, presence: { message: " Nombre paciente es requerido"}
  validates :apepaciente , presence: true , confirmation: true
  validates :apepaciente_confirmation, presence: { message: " Apellido paciente es requerido"}
end
