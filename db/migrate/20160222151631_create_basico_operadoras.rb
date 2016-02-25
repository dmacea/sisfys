class CreateBasicoOperadoras < ActiveRecord::Migration
  def change
    create_table :basico_operadoras do |t|
      t.string :nombre, limit: 35

      t.timestamps null: false
    end
  end
end
