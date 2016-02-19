class CreateRegistroClientes < ActiveRecord::Migration
  def change
    create_table :registro_clientes do |t|
      t.belongs_to :tipoIdentidad, index: true, foreign_key: true
      t.string :identidad, limit: 16
      t.string :nombres, limit: 180
      t.string :direccion, limit: 400
      t.belongs_to :parroquia, index: true, foreign_key: true
      t.string :email, limit: 35
      t.string :ping, limit: 20
      t.string :web, limit: 200
      t.string :twitter, limit: 70
      t.string :telefono, limit: 15
      t.string :otroTelefono, limit: 15
      t.string :celular, limit: 15
      t.string :otroCelular, limit: 15
      t.string :otroEmail, limit: 35

      t.timestamps null: false
    end
  end
end
