class CreateBasicoModeloVehiculos < ActiveRecord::Migration
  def change
    create_table :basico_modelo_vehiculos do |t|
      t.string :nombre, limit: 50
      t.belongs_to :marcaVehiculo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
