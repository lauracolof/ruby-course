#! WHILE AND UNTIL nos permiten definir ciclos cuyo final no está definido por un número de repeticiones, sino por una expresión que devuelve true or false.

while expresion #cuando evalúa esta expresión a false se detiene
  #Instrucciones a expresar.
end

while i < 10
  print i
  i += 1 #no imprime el 10
end

while i <= 10
  print i
  i += 1 #lo imprime
end

playlist = ["Boulever of broken dreams", "Farther Away", "Black Wedding"]
playing = true

index_song = 0

#Si hay canciones en la lista y se está reproduciendo (playing = true), debe ejecutar las canciones
while (index_song < playlist.length) && playing
  puts "Playing #{playlist[index_song]}"
  index_song += 1 #retorna las canciones en orden
  #Si nos manda 0, stop, sino seguimos reproduciendo
  print "Coloque 1 para seguir reproduciendo, 0 para detener: "
  response = gets().chomp.to_i

  playing = respuesta != 0 # si respuesta es != 0 devuelve true, y sigue, sino detiene
end


#! UNTIL: until es a while, lo que unless a if. ejecutamos mientras sea falso
#Recibimos numeros del usuario hasta que adivine el mágico
magic_number = 20

print "Guess the magic number: "
user_number = gets().chomp.to_i

until user_number == magic_number
  print "Wrong. Try again! "
  user_number = gets().chomp.to_i
end

puts "Congrats, you did it!"


#! Do while
numero = -2
begin 
  #al menos se ejecuta una vez, mientras se usen negativos
  numero = gets.chomp.to_i

end while numero < 0

#! a la inversa
numero = -2
begin 
  #se ejecuta hasta que se use un negativo
  numero = gets.chomp.to_i

end until numero < 0