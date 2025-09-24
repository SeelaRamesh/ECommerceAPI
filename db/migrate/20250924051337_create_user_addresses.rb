class CreateUserAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :user_addresses do |t|
      t.text :shipping_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip

      t.timestamps
    end
  end
end
