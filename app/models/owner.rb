class Owner < ActiveRecord::Base

  has_many :players

  belongs_to :users
end
