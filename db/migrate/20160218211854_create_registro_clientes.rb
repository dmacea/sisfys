class CreateRegistroClientes < ActiveRecord::Migration
  def change
    create_table :registro_clientes do |t|
      t.belongs_to :personaJuridica, index: true, foreign_key: true
      t.string :identidad, limit: 10
      t.string :nombres, limit: 60
      t.string :apellidos, limit: 60
      t.string :direccion, limit: 450
      t.belongs_to :parroquia, index: true, foreign_key: true
      t.string :email, limit: 50
      t.string :pin, limit: 20
      t.string :web, limit: 300
      t.string :tiwtter, limit: 50

      t.timestamps null: false
    end
  end
end
