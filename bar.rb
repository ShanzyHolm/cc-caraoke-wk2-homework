class Bar

  attr_reader :name, :rooms, :entry_fee

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
    @entry_fee = 10
    @till = 0
  end

  def entry_fee()
    return @entry_fee
  end

  # def pay_entry_fee(guest)
  #   guest.
  # end

end
