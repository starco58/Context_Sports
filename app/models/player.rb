class Player < ActiveRecord::Base

  has_many :plays
  has_many :users

  has_many :events

  has_many :own_plays, :through => :events, :source => :play


end
