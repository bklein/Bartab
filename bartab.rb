class BarTab

  def initialize
    @drinks = []
  end

  def balance
    total_balance = 0
    @drinks.each do |current_drink|
      total_balance = total_balance + current_drink.price
    end
    return total_balance
  end

  def combine(other_bartab)
    @drinks << other_bartab.balance
    other_bartab.zero_out_tab
  end

  def zero_out_tab
    @drinks = []
  end

  def add_drink(drink)
    @drinks << drink
  end

  def a_list_of_all_the_drinks_I_had
    @drinks.map do |drink|
      drink.name
    end
  end
end
