class CreateUserProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :user_profiles do |t|
      t.string :address,    null: false, default: ""
      t.date :dob,          null: false, default: ""
      t.string :gender,     null: false, default: ""
      t.string :username,   null: false, default: ""
      t.references :user,   null: false, default: "", foreign_key: true

      t.timestamps




      add_index :user_profiles, :username  , unique:true
      

    end
  end
end
