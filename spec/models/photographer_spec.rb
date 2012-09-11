require 'spec_helper'

describe Photographer do
  before(:each) do
    @photographer = Photographer.new(:name => "Ricardo Pacheco")
  end
  
  subject { @photographer }
  
  it { should respond_to(:name) }
  it { should respond_to(:galleries) }
  
  it { should be_valid }
end
