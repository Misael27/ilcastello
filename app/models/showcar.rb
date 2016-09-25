class Showcar < ActiveRecord::Base
  validates :name, uniqueness: true  
end
