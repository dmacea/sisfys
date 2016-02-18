class CreateBasicoMunicipios < ActiveRecord::Migration
  def change
    create_table :basico_municipios do |t|
      t.string :nombre, limit: 30
      t.belongs_to :estado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
