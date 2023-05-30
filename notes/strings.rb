# 
nombre = 'Laura'
"Hola " + nombre

# Interpolación, dentro de un string cologamos ${}, no cuenta como parte del string sino como código de ruby
"Hola #{ nombre }"  # -> Hola Laura
"Hola #{20 + 20}" # -> Hola 40
"Hola #{nombre.upcase}" #-> Hola LAURA

# "".methods => nos devuelve todos los métodos para ejecutarse en strings.
# "Laura".downcase(pasa a minúsculas), etc.
# Para caracteres especiales, con acentos hay que incluír el método de codificador al principio del archivo: " #encoding: utf-8 " . 
# Caracteres no imprimibles como el backslash
  # "Hola Laura \n \n \n" -> imprime Hola Laura y 3 saltos de linea debajo del string. \t significa tabulación. SOLO FUNCIONA CON COMILLAS DOBLES
