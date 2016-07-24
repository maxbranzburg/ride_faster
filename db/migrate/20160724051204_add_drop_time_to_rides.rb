class AddDropTimeToRides < ActiveRecord::Migration
  def change
    add_column :rides, :drop_time, :datetime
  end
end
