class Publisher < ActiveRecord::Base  
  attr_accessible :name
  
  has_many :games
end