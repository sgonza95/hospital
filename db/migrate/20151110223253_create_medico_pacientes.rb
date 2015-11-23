class CreateMedicoPacientes < ActiveRecord::Migration
  def change
    create_table :medico_pacientes do |t|
      t.references :medico, index: true, foreign_key: true
      t.references :paciente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
