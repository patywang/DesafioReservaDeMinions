class RemoveDescricaoFromReserva < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservas, :descricao, :string
  end
end
