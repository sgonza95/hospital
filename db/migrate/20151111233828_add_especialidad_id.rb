class AddEspecialidadId < ActiveRecord::Migration
  def change
    add_column :medicos, :especialidad_id, :integer
  end
end
