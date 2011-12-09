class Rating < ActiveRecord::Base  
  attr_accessible :value, :user_id, :game_id
  
  belongs_to :user
  belongs_to :game
end
