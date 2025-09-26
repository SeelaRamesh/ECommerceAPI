class CreateProductVariants < ActiveRecord::Migration[7.2]
  def change
    create_table :product_variants do |t|
      t.references :product, null: false, foreign_key: true
      t.string :sku
      t.string :color
      t.string :size
      t.decimal :price
      t.integer :stock_qty

      t.timestamps
    end
  end
end
