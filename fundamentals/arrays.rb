#! ARRAYS, CREACIÓN Y MÉTODOS
array = []
array1 = [3, "perro", true]
#Para acceder a una posición:
puts array1[1]
#Para incrementar: 
array1[3] = ':)'
array2 = Array.new(5) #inicializa un array con 5 posiciones pero vacías
#Con %w se define cada elemento solo utilizando espacios, sin comas:
arreglo = %w[1 40 'strings']
# << inserta lo que esté a la derecha en el arr que esté a la izq.
arreglo << "hola"

#! ITERAR ARREGLOS CON EACH: each sirve para iterar arreglos y hash.

calificaciones = %w[10 7 8 9 5 8 10]
puts calificaciones #imprime uno abajo de otro
print calificaciones #imprime uno al lado del otro

#pasamos un bloque de codigo do - end y dentro colocamos dentro de | | una variable que cambie mientras itera el elemento
calificaciones.each do |calificacion|
  # esto devuelve una linea de respuesta por cada iteración
  puts "Ahora calification vale: #{calificacion}" 
end

#si queremos saber la posición en que estamos dentro del arreglo, este método envía dos args al bloque
calificaciones.each_with_index do |calification, position|
  # esto devuelve una linea respuesta por cada iteración
  puts "Ahora calification vale: #{calification}, en la posicion: #{position}"
end

#Si quisieramos promediarlas: 
suma = 0
calificaciones.each_with_index do |calification, position|
  suma += calification.to_i #convertimos a enteros, porque el %w genera cadenas
end
  puts "El promedio es: #{suma.to_f / calificaciones.length}"
  #metodo size hace lo mismo.
  puts "El promedio es: #{suma / calificaciones.size}"


#! OPERACIONES CON ARREGLOS:
#MULTIPLICADOR => obtenemos el arreglo duplicado, pero no multiplicado
calificaciones * 2
# Si queremos mostrar separado con - o con , por ej, deberíamos hacer:
puts calificaciones * " - " #10 - 7 - 8 - 9 - 5 - 8 - 10

puts calificaciones.join('') # 107895810

#Menor a mayor 
puts calificaciones.sort
#Mayor a menor
puts calificaciones.sort.reverse
#Nuevo arreglo al revés
puts calificaciones.reverse
#Buscar elemento 
puts calificaciones.include?(9) # true or false
#Primer elem, 
puts calificaciones.first
#Último elem, 
puts calificaciones.last
#Unique, mismo arr sin elem repetidos
puts calificaciones.uniq
#Devolver elem random
puts calificaciones.sample
#


