puts "Bienvenido a Supermercado en Consola"

lista_productos = {
  "pan" => 1.5,
  "queso" => 2,
  "tomate" => 4,
  "fideos" => 2.5
}

carrito_nombres = []

carrito_precios = []

mas_prodcutos = ""

puts "\nLista de Productos:"
lista_productos.each do |producto, precio|
  puts "#{producto}: $ #{precio}"
end

puts "\nAgregue los productos que desee llevar"
  nombre_producto = gets.chomp.downcase
  carrito_nombres << nombre_producto
  carrito_precios << lista_productos[nombre_producto]

until mas_prodcutos == "no"
  puts "\n¿Desea agregar otro producto? (si/no)"
  mas_prodcutos = gets.chomp.downcase

  if mas_prodcutos == "si"
    puts "\nAgregue los productos que desee llevar"
    nombre_producto = gets.chomp.downcase
    carrito_nombres << nombre_producto
    carrito_precios << lista_productos[nombre_producto]
  elsif mas_prodcutos == "no"
    puts "\nProductos agregados correctamente."
  elsif mas_prodcutos != "si"
    puts "\nIngrese 'si'/'no'"
  end
  
end

puts "\nProdcutos agregados al carrito:"

carrito_nombres.each do |producto|
  puts "#{producto}"
end


puts "\nTotal a pagar: $ #{carrito_precios.sum()}"

