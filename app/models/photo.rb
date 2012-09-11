class Photo < ActiveRecord::Base
  attr_accessible :title, :gallery_id
  
  belongs_to :gallery  
end
