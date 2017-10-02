require_relative './ascii'

class UserInterface

  def initialize
  end


  def show_welcome
    puts Ascii.welcome()
  end

  def bouncer()
    puts "Names please!  If your names not down, you're not getting in"
    guest1 = gets.chomp
    puts "Let me see.... Yep, #{guest1.name} your names here, in you go"
    puts
    puts "And yourself?"
    guest2 = gets.chomp
    puts "#{guest.name}? Yes there you are.  Enjoy your night!"
  end

  def song_choice()
    puts "What song would you like to sing?"
    song1 = gets.chomp
    puts "We don't have #{song1} song.  How about...?"
  end

  def move_to_bar
    puts "Thats enough singing, why don't you get yourself a drink in the bar?"
    puts
    puts
    puts Ascii.move_to_bar
  end

  def like_a_drink
    puts "Would you like a drink? [Y/N]"
    responce = gets.chomp.to_s
    if responce == "Y"
      ascii.bar_art
      bar.drinks_consumed
    elsif responce == "N"
      puts "Ok, goodnight"
    end
    ascii.taxi
  end

end
