class CreateMinions < ActiveRecord::Migration[5.0]
  def change
    create_table :minions do |t|
      t.string :nome
      t.string :descricao
      t.string :imagem
      t.timestamps
    end
  end
end
