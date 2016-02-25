class CreateBasicoTipoVehiculos < ActiveRecord::Migration
  def change
    create_table :basico_tipo_vehiculos do |t|
      t.string :nombre, limit: 50

      t.timestamps null: false
    end
  end
end
