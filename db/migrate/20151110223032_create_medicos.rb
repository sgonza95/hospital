class CreateMedicos < ActiveRecord::Migration
  def change
    create_table :medicos do |t|
      t.string :nombremedico
      t.string :apemedico

      t.timestamps null: false
    end
  end
end
