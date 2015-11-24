class Medico < ActiveRecord::Base
  has_many :medico_paciente
  has_many :paciente, :through => :medico_paciente
  belongs_to :especialidad

  validates :nombremedico , presence: true , confirmation: true
  validates :nombremedico_confirmation, presence: { message: " Nombre medico es requerido"}
  validates :apemedico , presence: true , confirmation: true
  validates :apemedico_confirmation, presence: { message: " Apellido medico es requerido"}
end
