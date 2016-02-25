class CreateBasicoModelos < ActiveRecord::Migration
  def change
    create_table :basico_modelos do |t|
      t.string :nombre, limit: 30
      t.belongs_to :marca, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
