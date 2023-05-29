# IO => Input/ Output
#vamos a leer e imprimir datos de la terminal.
# puts: método para imprimir info en la terminal. agrega un salto de linea al final de la cadena
# print: sería igual a hacer un put y agregarle un \n al final.
nombre = "Laura"
puts "Hola #{nombre}"

nombre = gets
# GETS hace una pausa para que el usuario ingrese información y hasta que da el salto de linea o enter continua la ejecución del programa, y lo retorna
print "Dame tu nombre: "
nombre = gets
puts "Hola #{nombre}"

#Dame tu nombre: => espera
#Tipeamos "Laura" y responde => Hola Laura.

#Para contar la cantidad de letras del nombre de la persona:
print "Dame tu nombre: "
nombre = gets
puts "Hola #{nombre}"
#una solución porque incluye el salto de linea como caracter
puts "Tu nombre tiene #{ nombre.length - 1 } letras" 

#otra solución, reasignamos nombre con el método chomp:
nombre = nombre.chomp # => quita el último caracter
puts "Tu nombre tiene #{ nombre.length } letras"