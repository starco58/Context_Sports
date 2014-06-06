class Event < ActiveRecord::Base

  has_many :plays
  has_many :players
  has_many :responses

end
