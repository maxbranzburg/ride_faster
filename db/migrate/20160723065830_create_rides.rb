class CreateRides < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.string :brand
      t.datetime :request_time
      t.integer :est_wait_time
      t.datetime :pick_time
      t.integer :pick_pax
      t.string :pick_address
      t.string :drop_address
      t.integer :est_duration_at_pick
      t.integer :picks_en_route
      t.integer :drops_en_route
      t.float :cost_before_discounts
      t.float :cost_after_discounts
      t.float :actual_wait_time
      t.float :actual_duration
      t.references :user, index: true

      t.timestamps
    end
  end
end
