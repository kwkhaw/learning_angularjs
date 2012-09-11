class Gallery < ActiveRecord::Base
  attr_accessible :title, :photographer_id
  
  belongs_to :photographer
  has_many :photos
end
