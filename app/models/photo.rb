class Photo < ActiveRecord::Base
  attr_accessible :title, :gallery_id, :image
  
  has_attached_file :image,
                    :styles => { :large   => ["640x480>", :jpg],
                                 :gallery => ["200x200#", :jpg] }
  
  belongs_to :gallery 
  
  def as_json(options={})
      hash = super(options)
      hash.merge!(
                  'image_gallery_url' => image.url(:gallery),
                  'image_large_url' => image.url(:large),
                  'image_original_url' => image.url(:original)
                  )
      hash
    end
     
end
