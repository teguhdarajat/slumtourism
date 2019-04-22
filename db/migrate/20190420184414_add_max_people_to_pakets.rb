class AddMaxPeopleToPakets < ActiveRecord::Migration[5.2]
  def change
    add_column :pakets, :maxpeople, :integer
  end
end
