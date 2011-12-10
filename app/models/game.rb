class Game < ActiveRecord::Base
  attr_accessible :title, :dev, :pub, :plat
  
  has_many :ratings
  belongs_to :developer
  belongs_to :publisher
  belongs_to :platform
end