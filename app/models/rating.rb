class Rating < ActiveRecord::Base  
  attr_accessible :value, :user_id, :game_id
  
  belongs_to :users
  belongs_to :games
end
