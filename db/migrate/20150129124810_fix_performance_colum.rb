class FixPerformanceColum < ActiveRecord::Migration
  def change
    remove_column :performances, :performance_artist
    remove_column :performances, :performance_venues
  end
end
