require_relative './guests'
require_relative './karaoke'
require_relative './bar'
require_relative './song'
require_relative './user_interface'


class Runner


  def setup()

    ui = UserInterface.new()
    guest1 = Guest.new("Louise", 20)
    guest2 = Guest.new("Alanna", 15)
    karaoke = Karaoke.new(5, 10)
    bar = Bar.new(10, 5)
    song1 = Song.new("Hey Jude", "The Beatles")
    song2 = Song.new("Ice Ice Baby", "Vanilla Ice")
    songs = ["Dancing Queen", "I Will Survive", "Wonderwall"]
    room = []
    bar_occupants = []
    drinks_consumed = 0
  end

  def run()
    ui.show_welcome
    ui.bouncer
    karaoke.add_guest(guest1, guest2)
    ui.song_choice
    karaoke.random_song
    puts
    karaoke.crowd_responce
    puts
    ui.song_choice
    karaoke.random_song
    puts
    karaoke.crowd_responce
    karaoke.empty_room
    ui.move_to_bar
    until bar.drinks_consumed > bar.limit do
      ui.like_a_drink
    end
  end



end

self.run()
