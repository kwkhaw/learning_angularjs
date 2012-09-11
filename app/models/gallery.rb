class Gallery < ActiveRecord::Base
  belongs_to :photographer
  attr_accessible :title
end
