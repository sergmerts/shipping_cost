# lib/parcel.rb

class Parcel

  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def length
    @length
  end

  def width
    @width
  end

  def height
    @height
  end

  def weight
    @weight
  end

  def volume
    @volume = length*width*height
  end

  def cost
    @cost = volume*weight*0.002
  end
end
