require 'spec_helper'

describe SelectedPhoto do
  
  before(:each) do
    @selected_photo = SelectedPhoto.new(:title => "Title of one photo selected", :photo_id => 1)
  end
  
  subject { @selected_photo }
  
  it { should respond_to(:title) }
  it { should respond_to(:photo) }
  it { should respond_to(:photo=) }
  it { should respond_to(:as_json) }
  
  describe "#photo= should assign the photo" do
    before { @selected_photo.title = 'My Photo' }
    it { should == @selected_photo }
  end
  
  describe "#photo should return the selected photo" do
    before { @selected_photo.title = 'My Photo' }
    it { should == @selected_photo }
  end
  
  describe "#as_json should include the id, title, and image urls" do
    photo = Photo.create!(:image => File.new(Rails.root + 'app/assets/images/1.jpg'))
    s = SelectedPhoto.new(:title => 'One Selected Title', :photo => photo)
    s.as_json['image_gallery_url'].should == photo.image.url(:gallery)
    s.as_json['image_large_url'].should == photo.image.url(:large)
    s.as_json['image_original_url'].should == photo.image.url(:original)
  end
  
end
