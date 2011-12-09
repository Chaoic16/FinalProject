class Platform < ActiveRecord::Base  
  attr_accessible :name, :company
  
  has_many :games
end