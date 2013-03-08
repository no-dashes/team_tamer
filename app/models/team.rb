class Team < ActiveRecord::Base
  attr_accessible :color, :title
  has_many :members
  has_many :shifts
  def active_model_serializer
    TeamSerializer
  end
end
