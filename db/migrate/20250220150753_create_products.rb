class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :name
      t.references :kind, null: false, foreign_key: true
      t.integer :stock
      t.string :image
      t.decimal :price

      t.timestamps
    end
  end
end
