class CreateCounter < ActiveRecord::Migration[6.0]
  def change
    create_table :counters do |t|
      t.string :month
      t.integer :cold
      t.integer :hot
    end
  end
end
