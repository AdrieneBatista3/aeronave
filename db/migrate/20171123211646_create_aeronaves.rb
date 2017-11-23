class CreateAeronaves < ActiveRecord::Migration
  def change
    create_table :aeronaves do |t|
      t.string :nome
      t.string :numero_de_tripulantes
      t.string :tamanho
      t.string :numero
      t.string :chassi
      t.string :quantidade_de_horas_de_voo
      t.string :quantidade_de_motor

      t.timestamps null: false
    end
  end
end
