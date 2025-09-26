class CreateBrands < ActiveRecord::Migration[7.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :logo_url
      t.string :website

      t.timestamps
    end
  end
end
