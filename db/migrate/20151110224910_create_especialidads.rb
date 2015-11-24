class CreateEspecialidads < ActiveRecord::Migration
  def change
    create_table :especialidads do |t|
      t.string :nombreespe
      t.string :sala

      t.timestamps null: false
    end
  end
end
