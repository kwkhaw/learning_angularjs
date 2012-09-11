require 'spec_helper'

describe Photo do
  
  before(:each) do
    @photo = Photo.new(:title => "Title of one photo", :gallery_id => 1)
  end
  
  subject { @photo }
  
  it { should respond_to(:title) }
  it { should respond_to(:gallery) }
  it { should respond_to(:gallery=) }
  it { should respond_to(:image) }
  it { should respond_to(:as_json) }
  
  describe "#as_json should include the id, title, and image urls" do
    photo = Photo.create!(:image => File.new(Rails.root + 'app/assets/images/1.jpg'))
    photo.as_json['image_gallery_url'].should == photo.image.url(:gallery)
    photo.as_json['image_large_url'].should == photo.image.url(:large)
    photo.as_json['image_original_url'].should == photo.image.url(:original)
  end
  
  it { should be_valid }  

end
