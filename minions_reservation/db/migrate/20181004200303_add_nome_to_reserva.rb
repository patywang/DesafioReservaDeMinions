class AddNomeToReserva < ActiveRecord::Migration[5.0]
  def change
    add_column :reservas, :nome, :string
  end
end
