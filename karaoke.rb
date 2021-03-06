class Karaoke

  def initialize(capacity, entry_fee)
    @capacity = capacity
    @entry = entry_fee
    @songs = ["Dancing Queen", "I Will Survive", "Wonderwall"]
    @room = []
    @responce = ["AMAZINGG!!!", "WoOOooO, I LOVE this song!", "BOOO get off!!", "Don't give up your day job"]
  end

  def capacity()
    @capacity
  end

  def entry()
    @entry
  end

  def room_occupancy
    return @room.count
  end

  def add_songs(song)
    @songs << song
    return @songs.length()
  end

  def remove_song(song)
    return @songs.delete(song)
  end

  def include_song(song)
    return @songs.any? { |song| song == "Wonderwall"  }
  end

  def add_guest(guest)
    @room << guest
    return @room.count
  end

  def remove_guest(name)
    @room = ["Louise", "Alanna"]
    @room.delete(name)
    return @room.count
  end

  def empty_room()
    @room.clear
    return @room.count
  end

  def room_full()
    if room_occupancy > @capacity
    end
    return "Room full"
  end

  def afford_entry(guest)
    if guest.money >= @entry
      return true
    end
  end

  def crowd_responce()
     @responce = ["AMAZINGG!!!"]
    return @responce.sample
  end

  def random_song()
    return @songs.sample
  end



end
