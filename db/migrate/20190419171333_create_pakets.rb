class CreatePakets < ActiveRecord::Migration[5.2]
  def change
    create_table :pakets do |t|
      t.string :nama
      t.integer :harga
      t.text :deskripsi

      t.timestamps
    end
  end
end
