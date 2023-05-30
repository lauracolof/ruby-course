#! Qué es un iterador? es un método que internamente construye un ciclo, este ciclo tiene características específicas y nos permite invocar un bloque basado en estas características dentro del ciclo. Cada iterador define una serie de características a traves de las que va a construir el ciclo que eventualmente efectuará el bloque

#! TIMES: times es el método sobre el obj de la izq, lo siguiente es el bloque de código. I, valor del 0 al numero total de veces, menos uno, que ejecutaremos el ciclo.

# Queremos imprimir del 1 al 10
# 
10.times do |i|
  puts "Me ejecutaré 10 veces" #del 1 al 10
end

#! UPTO: Nos permite ejecutar un ciclo partiendo de un numero inicial hasta el numero que queramos llegar.
1.upto(10) do |i| #1 a 10
  puts i
end

#! DOWNTO: Inverso a upto.
20.downto(1) do |i|
  puts i # del 10 al 1
end