#! RANGOS: funcionan con numeros y con cadenas, tipo a-z. los rangos comparten muchos de los métodos de array, aunque no sean arrays
#Iterar numeros del .. al ..
numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numeros.each do |numero|
  puts numero
end

#mejor alternativa
(1..20).step(2)each do |numero|
  puts numero
end
#1, 3, 5, 7, 9, 11, 13, 15, 17, 19

("a".."z").each do |letter|
  print letter + " "
end
#a, b, c,.. x, y, z

#valor minimo o maximo del rango
puts(0..20).min
puts(0..20).max

#convertir rango a array e invertirlo.
puts("ma".."md").to_a # "ma, mb, mc, md", sin convertir a array devuelve 'ma..md'
