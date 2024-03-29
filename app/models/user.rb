class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  has_many :ratings
  has_many :comments
  
  email_regexp = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence => true,
                   :length => { :maximum => 50}
  
  validates :email, :presence => true,
                    :format => { :with => email_regexp},
                    :uniqueness => {:case_sensitive => false}  
end