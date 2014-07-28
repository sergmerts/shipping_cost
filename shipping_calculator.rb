require './lib/parcel'

@parcel = []

def main_menu
  loop do
    puts "Input the dimensions of your parcel, press 's' to start."
    puts "If you want to start over again press 'x'\n"
    user_input = gets.chomp
    if user_input == "s"
      take_dimensions
    elsif user_input == "x"
      main_menu
    else
      puts "Sorry, that doesn't compute. Press 'x' to start over or enter to continue"
    end
  end
end

def take_dimensions
  puts "Input your length: "
  length = gets.chomp.to_i

  puts "Input your width: "
  width = gets.chomp.to_i

  puts "Input your height: "
  height = gets.chomp.to_i

  puts "Input your weight: "
  weight = gets.chomp.to_i

  newParcel = Parcel.new(length, width, height, weight)

  @parcel << newParcel

  puts "Thanks. Your parcel dimension are:"
  puts "Length: #{@parcel[0].length}"
  puts "Width: #{@parcel[0].width}"
  puts "Height: #{@parcel[0].height}"
  puts "Weight: #{@parcel[0].weight}"
  puts "If this is correct, press 's' to proceed."
  puts "Otherwise, press 'x' to start over."
  user_input = gets.chomp

  if user_input == "x"
    main_menu
  elsif user_input == "s"
    calculate_cost
  end
end

def calculate_cost
  puts "Thanks. Here is your cost: $#{@parcel[0].cost}"
  puts "\n"
end

main_menu
