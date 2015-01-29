class ForeignKeyToPerformance < ActiveRecord::Migration
  def change
    add_foreign_key :performances, :artists
    add_foreign_key :performances, :venues
  end
end
