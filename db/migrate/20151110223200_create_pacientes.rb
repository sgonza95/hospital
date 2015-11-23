class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :nombrepaciente
      t.string :apepaciente

      t.timestamps null: false
    end
  end
end
