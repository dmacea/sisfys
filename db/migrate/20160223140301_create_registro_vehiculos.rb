class CreateRegistroVehiculos < ActiveRecord::Migration
  def change
    create_table :registro_vehiculos do |t|
      t.belongs_to :tipo, index: true, foreign_key: true
      t.belongs_to :modelo, index: true, foreign_key: true
      t.string :ano, limit: 5
      t.string :color, limit: 25
      t.string :placa, limit: 20
      t.string :serialCarroceria, limit: 35
      t.string :serialMotor, limit: 35
      t.belongs_to :cliente, index: true, foreign_key: true
      t.string :encargado, limit: 100
      t.belongs_to :dispositivo, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
