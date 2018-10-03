class AddEmailToReserva < ActiveRecord::Migration[5.0]
  def change
    add_column :reservas, :email, :string
  end
end
