require 'spec_helper'

describe SelectedPhoto do
  
  before(:each) do
    @selected_photo = SelectedPhoto.new(:title => "Title of one photo selected", :photo_id => 1)
  end
  
  subject { @selected_photo }
  
  it { should respond_to(:title) }
  it { should respond_to(:photo) }
  it { should respond_to(:photo=) }
  
  describe "#photo= should assign the photo" do
    before { @selected_photo.title = 'My Photo' }
    it { should == @selected_photo }
  end
  
  describe "#photo should return the selected photo" do
    before { @selected_photo.title = 'My Photo' }
    it { should == @selected_photo }
  end
  
end
