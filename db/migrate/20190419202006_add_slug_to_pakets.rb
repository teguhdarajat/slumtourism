class AddSlugToPakets < ActiveRecord::Migration[5.2]
  def change
    add_column :pakets, :slug, :string
    add_index :pakets, :slug, unique: true
  end
end
