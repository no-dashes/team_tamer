class Shift < ActiveRecord::Base
  attr_accessible :end_hour, :start_hour, :team
  belongs_to :team
end
