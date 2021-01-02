require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shoppingcart'


class ShoppingCartTest < Minitest::Test
  #Iteration2
  def test_it_exists
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_instance_of ShoppingCart, cart
  end

  def test_it_has_a_name
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal 'King Soopers', cart.name
  end

  def test_it_has_a_capacity
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal 30, cart.capacity
  end

  def test_it_has_products
    cart = ShoppingCart.new("King Soopers", "30items")

    assert_equal [], cart.products
  end

  def test_it_can_add_product
    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')

    cart.add_product(product1)
    cart.add_product(product2)
    assert_equal [product1, product2], cart.products
  end

  def test_it_has_details
    cart = ShoppingCart.new("King Soopers", "30items")

    expected =  {name: "King Soopers", capacity: 30}
    actual = cart.details

    assert_equal expected, actual
  end




  def test_total_number_of_products

    cart = ShoppingCart.new("King Soopers", "30items")
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

    cart.add_product(product1)
    cart.add_product(product2)
    cart.add_product(product3)

    assert_equal 13, cart.total_number_of_products
  end


  # pry(main)> cart.is_full?
  # #=> false
  #
  # pry(main)> product4 = Product.new(:produce, 'apples', 0.99, '20')
  #
  # #=> #<Product:0x00007fccd2985f53...>
  #
  # pry(main)> cart.add_product(product4)
  #
  # pry(main)> cart.is_full?
  # #=> true
  #
  # pry(main)> cart.products_by_category(:paper)
  # #=> [#<Product:0x00007fccd29b5720...>, #<Product:0x00007fccd2985f51...>]


end
