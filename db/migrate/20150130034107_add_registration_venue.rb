class AddRegistrationVenue < ActiveRecord::Migration
  def change
    add_column :venues, :username, :string
    add_column :venues, :password, :string
  end
end
