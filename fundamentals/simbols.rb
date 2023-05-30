#! SIMBOLOS: Cadena inmutable, no se puede modificar en tiempo de ejecución. No se duplican valores.

cadena = "laura"
cadena.capitalize!
puts.cadena #devuelve Laura

cadena = "Laura"
cadena2 = "Laura"
simbolo = :Laura
simbolo2 = :Laura
# Cadenas tienen objects ID diferentes
puts cadena.object_id
puts cadena2.object_id
# simbolos comparten el mismo ID, si el simbolo ya existía, para esto los simbolos tienen que ser inmutables. En performance es más óptimo es reutilizar el mismo objeto.
puts simbolo.object_id
puts simbolo2.object_id
#Si comparamos dos strings: compara letra por letra
if cadena == cadena2
#Si comparamos simbolos, compara el object_id y si son iguales ambos tienen que ser iguales y sino diferentes.
if simbolo == simbolo2

#! Cuándo utilizar símbolos? 
# 1. Cuando no necesitamos modificar el string. En futuras mejoras de Ruby, tampoco se podrán utilizar cambios. Pero se puede utilizar algo que genera un string nuevo:
cadena = cadena.capitalize #es lo mismo que linea 4
# 2. Cuando no necesitamos los métodos del string
# 3. Los simbolos suelen ser útiles como nombres de cosas. Un lugar donde podemos utilizar simbolos, son los hashes.