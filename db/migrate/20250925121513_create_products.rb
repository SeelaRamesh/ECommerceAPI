class CreateProducts < ActiveRecord::Migration[7.2]
  def change
    create_table :products do |t|
      t.string :title
      t.string :descripton
      t.decimal :price
      t.integer :stock_qty
      t.references :brand, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
