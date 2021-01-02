class ShoppingCart

  attr_reader :name,
              :capacity,
              :products

  def initialize(name, capacity)
    @name     = name
    @capacity = capacity.to_i
    @products = []

  end

  def add_product(item)
    @products << item
  end


  def details
    {:name => "King Soopers",
     :capacity => @capacity}
  end

  def total_number_of_products
    @products.sum do |product|
    product.quantity
    end
  end

  def is_full?
    if total_number_of_products > 30
      true
    else
      false
   end
  end

  def products_by_category(category)
    @products.find_all do |product|
      product.category == category
    end
  end
end
