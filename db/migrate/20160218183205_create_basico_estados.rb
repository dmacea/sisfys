class CreateBasicoEstados < ActiveRecord::Migration
  def change
    create_table :basico_estados do |t|
      t.string :nombre, limit: 30
      t.string :codigo, limit: 4
      t.belongs_to :pais, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
