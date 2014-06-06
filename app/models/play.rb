class Play < ActiveRecord::Base

  belongs_to :event
  belongs_to :player

  has_many :responses
end
