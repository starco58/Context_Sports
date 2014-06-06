class Player < ActiveRecord::Base

  has_many :plays
  has_many :users

  has_many :events
  has_many :games, :through => :events

  has_many :owners, :through => :users


end
