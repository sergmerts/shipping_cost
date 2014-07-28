require 'rspec'
require 'parcel'

describe Parcel do
  it 'initialize Parcel class with length, width, height, and weight' do
    test_parcel = Parcel.new(10,10,10,10)
    test_parcel.should be_an_instance_of Parcel
  end

  it 'lets you access the individual properties' do
    test_parcel = Parcel.new(10,10,10,10)
    test_parcel.length.should eq 10
    test_parcel.width.should eq 10
    test_parcel.height.should eq 10
    test_parcel.weight.should eq 10
  end

  it 'should return overall dimensions' do
    test_parcel = Parcel.new(10,10,10,10)
    test_parcel.volume.should eq 1000
  end

  it 'should calculate a cost to ship the package' do
    test_parcel = Parcel.new(10,10,10,10)
    test_parcel.cost.should eq 20
  end
end


