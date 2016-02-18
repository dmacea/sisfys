class CreateBasicoParroquias < ActiveRecord::Migration
  def change
    create_table :basico_parroquias do |t|
      t.string :nombre, limit: 30
      t.belongs_to :municipio, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
