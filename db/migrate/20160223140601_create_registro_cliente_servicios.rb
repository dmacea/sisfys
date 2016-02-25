class CreateRegistroClienteServicios < ActiveRecord::Migration
  def change
    create_table :registro_cliente_servicios do |t|
      t.belongs_to :cliente, index: true, foreign_key: true
      t.belongs_to :servicio, index: true, foreign_key: true
      t.belongs_to :dispositivo, index: true, foreign_key: true
      t.boolean :pagaPlan
      t.belongs_to :fechaInicio, index: true, foreign_key: true
      t.string :estado, limit: 5

      t.timestamps null: false
    end
  end
end
