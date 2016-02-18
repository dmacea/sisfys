class CreateBasicoPaises < ActiveRecord::Migration
  def change
    create_table :basico_paises do |t|
      t.string :nombre, limit: 30
      t.string :codigo, limit: 4

      t.timestamps null: false
    end
  end
end
