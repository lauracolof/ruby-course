=begin
=end

#gets permite recibir, chomp quita caracter, to_i convierte a entero
numero_uno = gets.chomp.to_i 
numero_dos = gets.chomp.to_i 

if numero_uno > numero_dos
  puts "#{numero_uno} es mayor que #{numero_dos}"
end #return

#esto es lo mismo que esto, pero solo se puede ejecutar si es una sola linea.
puts "#{numero_uno} es mayor que #{numero_dos}" if numero_uno > numero_dos

# if - else 
if numero_uno > numero_dos
  puts "#{numero_uno} es mayor que #{numero_dos}"
else 
  puts "#{numero_uno} es menor que #{numero_dos}"
end #return

#if - else if - else
if numero_uno > numero_dos
  puts "#{numero_uno} es mayor que #{numero_dos}"
elsif  numero_dos > numero_uno
  puts "#{numero_uno} es menor que #{numero_dos}"
else
  numero_uno == numero_dos
  puts "Ambos numeros son iguales"
end #return

# //!UNLESS: es igual que if pero a la inversa, si la expresión que se coloque después evalua unless false, imprime. 
unless true
  puts "Hola Mundo"
end

#también se puede usar en una sola linea
puts "Hola mundo" unless false
# --------------- 
edad = gets.chomp.to_i

unless edad >= 18 #excepto que la edad sea menor a 18 años
  puts "No puedes entrar"
end

if !(edad >= 18) #es mejor usar unless
  puts "No puedes entrar"
end

