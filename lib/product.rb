class Product
  attr_reader :category,
              :name,
              :unit_price,
              :quantity

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name     = name
  end
end
