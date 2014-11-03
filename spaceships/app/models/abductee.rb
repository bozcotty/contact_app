class Abductee < ActiveRecord::Base
  has_many :alien_probe_doctors, :through => :spaceships
  has_many :spaceships
end
