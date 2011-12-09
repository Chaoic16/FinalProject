class Game < ActiveRecord::Base
  attr_accessible :title, :developer_id, :publisher_id, :platform_id
  
  has_many :ratings
  belongs_to :publishers
  belongs_to :developers
end