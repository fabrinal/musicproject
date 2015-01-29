class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :performance_name
      t.string :performance_artist
      t.string :performance_venue
      t.datetime :performance_date

      t.timestamps null: false
    end
  end
end
