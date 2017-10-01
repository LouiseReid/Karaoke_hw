class Bar

  def initialize(stock_count, drink_limit)
    @stock = stock_count
    @limit = drink_limit
    @bar_occupants = []
    @drinks_consumed = 0
  end

  def stock_count
    @stock
  end

  def drink_limit
    @limit
  end

  def guest_in_bar(guest)
    @bar_occupants << guest
    return @bar_occupants.count
  end

  def empty_bar()
    @bar_occupants = ["Louise", "Lynsey", "David"]
    @bar_occupants.clear
    return @bar_occupants.count
  end

  def drinks_consumed()
    return @drinks_consumed += 1
  end


end
