class CreateTimespans < ActiveRecord::Migration
  def change
    create_table :timespans do |t|
      t.time :start_time
      t.time :end_time
      t.integer :report_id
      t.timestamps
    end
  end
end
