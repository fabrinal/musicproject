class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :first_name
      t.string :user_name
      t.string :password
      t.string :city
      t.integer :zip_code
      t.string :user_type

      t.timestamps null: false
    end
  end
end
