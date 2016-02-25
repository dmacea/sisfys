class CreateRegistroDispositivos < ActiveRecord::Migration
  def change
    create_table :registro_dispositivos do |t|
      t.string :tipo, limit: 25
      t.belongs_to :modelo, index: true, foreign_key: true
      t.string :serial, limit: 100
      t.string :email, limit: 35
      t.belongs_to :linea, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
