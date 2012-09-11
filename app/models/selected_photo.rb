class SelectedPhoto < ActiveRecord::Base
  attr_accessible :title, :photo_id, :photo
  
  belongs_to :photo
end
