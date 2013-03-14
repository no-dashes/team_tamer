class TeamSerializer < ActiveModel::Serializer
  attributes :id, :title, :members
  has_many :members
end
