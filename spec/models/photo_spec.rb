require 'spec_helper'

describe Photo do
  
  before(:each) do
    @photo = Photo.new(:title => "Title of one photo", :gallery_id => 1)
  end
  
  subject { @photo }
  
  it { should respond_to(:title) }
  it { should respond_to(:gallery) }
  it { should respond_to(:gallery=) }
  
  it { should be_valid }  
end
