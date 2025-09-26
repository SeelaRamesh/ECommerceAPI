class CreateCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :categories do |t|
      t.string :name,         null: false, default: ""
      t.text :description,                ,default: ""
      t.string :slug,         null:false 
      t.bigint :parent_id,    index:true
      t.timestamps

      # adding indexes to the columns
      add_index :categories,:slug,unique:true 
      add_foreign_key :categories,:categories,column: :parent_id
    end
  end
end
