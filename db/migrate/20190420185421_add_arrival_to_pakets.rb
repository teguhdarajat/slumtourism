class AddArrivalToPakets < ActiveRecord::Migration[5.2]
  def change
    add_column :pakets, :arrival, :string
  end
end
