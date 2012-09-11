require 'spec_helper'

describe Gallery do
  
  before(:each) do
    @gallery = Gallery.new(:title => "Title of one gallery", :photographer_id => 1)
  end
  
  subject { @gallery }
  
  it { should respond_to(:title) }
  it { should respond_to(:photographer) }
  it { should respond_to(:photographer=) }
  it { should respond_to(:photos) }
  
  it { should be_valid }  
end
