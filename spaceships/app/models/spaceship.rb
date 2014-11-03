class Spaceship < ActiveRecord::Base
  belongs_to :alien_probe_doctor
  belongs_to :abductee
end
