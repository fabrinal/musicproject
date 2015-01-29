class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :venue_name
      t.string :location
      t.string :contact_info
      t.boolean :parking
      t.string :venue_capacity
      t.string :venue_image

      t.timestamps null: false
    end
  end
end
