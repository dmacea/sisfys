class CreateRegistroClienteServicioDetalles < ActiveRecord::Migration
  def change
    create_table :registro_cliente_servicio_detalles do |t|
      t.belongs_to :servicio, index: true, foreign_key: true
      t.date :fecha
      t.string :estado, limit: 5

      t.timestamps null: false
    end
  end
end
