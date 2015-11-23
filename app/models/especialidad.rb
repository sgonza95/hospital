class Especialidad < ActiveRecord::Base
  has_many :medico

  validates :nombreespe , presence: true , confirmation: true
  validates :nombreespe_confirmation, presence: { message: " es requerido"}
  validates :sala , presence: true , confirmation: true
  validates :sala_confirmation, presence: { message: " es requerido"}
end
