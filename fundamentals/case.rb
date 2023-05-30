=begin 
Case, equivalente a switch en JS.
Calificaciones del 1 al 12, 5 reprobatorio
Al condicional when se le pueden pasar más de un valor.
Las comparaciones de estos valores con las comparaciones del valor original se hacen con: === que es un método. A diferencia de los numeros, cadenas, que son == 
=end


print "Tell me your calification ( 1 - 10 ):"
calification = gets.chomp.to_i

puts case calification
when 10 
  "Very good!"
when 9 
  "Very good"
when 8
  "You know you can do better"
when 7 
  "You know you can do better"
when 6 
  "Not horrible, but almost..."
else 
  "Not good at all"
end

puts case calification
when 10, 9
  "Very good!"
when 8, 7
  "You know you can do better"
when 6 
  "Not horrible, but almost..."
else #default
  "Not good at all"
end

# if calification == 10 || calification == 9
#   puts "Very good"
# elsif calification == 8 || calification == 7
#   puts "You know you can do better"
# elsif calification == 6
#   puts "Not horrible, but almost..."
# else 
#   puts "Not good at all"
# end
