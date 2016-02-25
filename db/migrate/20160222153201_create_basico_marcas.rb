class CreateBasicoMarcas < ActiveRecord::Migration
  def change
    create_table :basico_marcas do |t|
      t.string :nombre, limit: 30

      t.timestamps null: false
    end
  end
end
