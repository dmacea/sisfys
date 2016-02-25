class CreateRegistroLineas < ActiveRecord::Migration
  def change
    create_table :registro_lineas do |t|
      t.belongs_to :operadora, index: true, foreign_key: true
      t.string :serial, limit: 50
      t.string :codigoPin, limit: 50
      t.string :codigoPunk, limit: 50
      t.string :numero, limit: 25
      t.belongs_to :plan, index: true, foreign_key: true
      t.integer :diaCorte 
      t.timestamps null: false
    end
  end
end
