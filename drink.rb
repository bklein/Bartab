class Drink
attr_reader :type
  def initialize(type)
    @type = type
  end

  def price
    the_drinks[@type][:price]
  end

  def name
    the_drinks[@type][:name]
  end


#private 

  def the_drinks
    drinks = 
    {
      beer:   { name: "Beer", price: 4.50},
      vodka:  { name: "Vodka", price: 3.0 },
      rum:    {   name: "Rum", price: 6.5}
    }
    drinks.default = { name: "Random drink", price: "2.0" }
    return drinks
  end

end
