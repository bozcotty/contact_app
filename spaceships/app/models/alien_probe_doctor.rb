class AlienProbeDoctor < ActiveRecord::Base
  has_many :abductees, :through => :spaceships
  has_many :spaceships
end
