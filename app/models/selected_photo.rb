class SelectedPhoto < ActiveRecord::Base
  belongs_to :photo
  attr_accessible :title
end
