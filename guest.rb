class Guest

  attr_reader :name, :money

def initialize(name, money)
  @name = name
  @money = money
end

def pay_entry_fee(bar)
  @money -= bar.entry_fee()
end

end
