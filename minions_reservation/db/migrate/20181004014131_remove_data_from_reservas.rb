class RemoveDataFromReservas < ActiveRecord::Migration[5.0]
  def change
    remove_column :reservas, :data, :datetime
  end
end
