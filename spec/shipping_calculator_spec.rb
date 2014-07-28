require 'rspec'
require 'parcel'

describe Parcel do
  it 'initialize Parcel class with length, width, height, and weight' do
    test_parcel = Parcel.new(10,10,10,10)
    test_parcel.should be_an_instance_of Parcel
  end
end

# describe Task do
#   it 'print the properties of the parcel' do

