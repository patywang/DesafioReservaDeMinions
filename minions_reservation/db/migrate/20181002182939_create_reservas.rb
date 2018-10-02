class CreateReservas < ActiveRecord::Migration[5.0]
  def change
    create_table :reservas do |t|
      t.string :descricao
      t.string :minions
      t.datetime :data

      t.timestamps
    end
  end
end
