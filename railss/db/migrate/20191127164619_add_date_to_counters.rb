class AddDateToCounters < ActiveRecord::Migration[6.0]
  def change
    add_column :counters, :date, :timestamp
  end
end
