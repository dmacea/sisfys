class CreateRegistroServicios < ActiveRecord::Migration
  def change
    create_table :registro_servicios do |t|
      t.string :nombre, limit: 35
      t.string :descripcion, limit: 250
      t.float :valor
      t.integer :impuesto

      t.timestamps null: false
    end
  end
end
