class Ride < ActiveRecord::Base
  belongs_to :user
  before_save :calculate_results

  def mins_diff(start_time, end_time)
  	return (end_time - start_time) / 60.0
  end

  def calc_wait_time
  	self.actual_wait_time = mins_diff(request_time,pick_time)
  end

  def calc_trip_duration
  	self.actual_duration = mins_diff(pick_time,drop_time)
  end

  def calculate_results
  	calc_wait_time
    calc_trip_duration
  end

end
