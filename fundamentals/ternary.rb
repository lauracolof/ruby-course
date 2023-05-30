user = "Laura"

if user == "Laura"
  puts "Alumna"
else
  puts "Visitante"
end

puts (if user == "Laura" then "Alumna" else "Visitante" end)

#Ruby retorna la última linea de código de la condición en la que haya encontrado el verdadero dentro de un if y un else. Almacenamos la respuesta en response.
response = if user == "Laura" then
  "Alumna"
else 
  "Visitante"
end

#última forma de escribirlo, en operador ternario
#if true then entonces_resultado else otra_cosa
#si_condicion_verdadero ? entonces_resultado : si_no_lo_otro
if user == "Laura" ? "Alumna" : "Visitante"