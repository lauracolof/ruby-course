#! SPLAT OPERATOR: El operador splat, dice que podemos pasarle cualquier cantidad de argumentos y los recibe como un array. Personas es un arreglo que contiene todos los argumentos que se le pasaron al método. Splat también se puede combinar con otros argumentos, como mensaje

def hola_gente(mensaje, *personas)
  persona.each {|persona| puts "#{mensaje} #{persona}"}
end

#hey entra dentro de mensaje
hola_gente "Hey, " "Shane", "Joe", "John", "Derek"

#! También funciona a la inversa. Si los tenemos a todos en un arreglo, debemos convertirlos de arreglo a lista de argumentos con *:
nombres = ["Uriel, Sócrates"]

hola_gente "Hey, sola", *nombres

