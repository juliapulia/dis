if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


cart = {}
sum = 0

loop do
  print "Введите название товара(или стоп): "
  item = gets.chomp
  break if item == "стоп"
  print "Введите цену: "
  price = gets.to_f
  print "Введите количество: "
  count = gets.to_f
  cart[item] = { price: price, count: count, item_sum: price * count }
end

puts "Корзина: "
cart.each  do |item_name, properties|
  puts "#{item_name}, стоимость за единицу: #{properties[:price]}, итого: #{properties[:item_sum]}"
  sum += properties[:item_sum]
end

puts "Общая сумма всех товаров: #{sum} руб."
