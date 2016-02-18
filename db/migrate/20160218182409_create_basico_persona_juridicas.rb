class CreateBasicoPersonaJuridicas < ActiveRecord::Migration
  def change
    create_table :basico_persona_juridicas do |t|
      t.string :descripcion, limit: 30
      t.string :tipo, limit: 1
      t.timestamps null: false
    end
  end
end
