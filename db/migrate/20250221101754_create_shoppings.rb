class CreateShoppings < ActiveRecord::Migration[8.0]
  def change
    create_table :shoppings do |t|
      t.references :product, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
