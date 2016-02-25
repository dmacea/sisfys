class CreateBasicoPlanes < ActiveRecord::Migration
  def change
    create_table :basico_planes do |t|
      t.string :nombre, limit: 35

      t.timestamps null: false
    end
  end
end
