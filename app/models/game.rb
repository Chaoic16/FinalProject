class Game < ActiveRecord::Base
  attr_accessible :title
  
  has_many :ratings
  belongs_to :publisher
  belongs_to :developer
end