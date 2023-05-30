#! HASH: Es una estructura que almacena datos como lo haría un diccionario, también se llaman arreglos asociativos. La diferencia con un array radica en como podemos acceder a los datos almacenados. Mientras que en el arreglo podemos acceder con la posición (índice). array = ['Hola', 'mundo'] => array[1]. En un hash para acceder la clave puede ser cualquier tipo de objeto, la sintaxis es distinta:

#La forma más fácil de definir un hash es con {}. Tiene clave y valor, la clave es la de la izq, y con ella podemos acceder al valor de la derecha. Si la clave es falsa, nos devuelve nulo
ejemplo = { "nombre" => "Laura", 20 => "veinte" [] => "arreglo"}

puts ejemplo #imprime: { "nombre" => "Laura", 20 => "veinte" [] => "arreglo"}

puts ejemplo["nombre"] #imprime Laura
puts ejemplo[[]] #imprime arreglo

#Cuando quieramos agregar datos, colocamos [  dentro la clave ] = aqui el valor
ejemplo["cursos"] = 10
puts ejemplo["cursos"] #imprime 10

#También podemos definir un valor por default,si la clave no tiene nada.
haseado.default = ":)"
puts haseado[5] #devuelve :)

#! Sintaxis más limpia, con símbolos, se identifican con :nombre_del_simbolo
con_simbolos = {:nombre => "Laura", :edad => 32, :cursos: 10}
puts con_simbolos #imprime {:nombre => "Laura", :edad => 32, :cursos: 10}
parecida_a_json = {nombre: "Laura", edad: "32", cursos: 10}
puts parecida_a_json #imprime igual {:nombre => "Laura", :edad => 32, :cursos: 10}
#También tenemos que usar simbolos para extrar los datos:
puts con_simbolos[:nombre]

#podemos itararlo y que nos devuelva sus datos.
con_simbolos.each do |key, value|
  puts "En #{key} está guardado #{value}"
end


#! OPERACIONES CON HASHES. 
ejemplo = {nombre: "Laura", apellido: "Coló", cursos: "2"}
#Obtener el tamaño del hash:
puts ejemplo.length #devuelve 3
puts ejemplo.size #devuelve 3
# Nos devuelve verdadero si la clave existe dentro del hash.
puts ejemplo.has_key?(:nombre) #si existe devuelve true, sino false
puts ejemplo.has_value?("Laura") #si existe devuelve true, sino false
# si queremos las puras keys o values
puts ejemplo.keys #devuelve un arreglo [nombre, apellido, cursos]
puts ejemplo.values #devuelve un arreglo [Laura, Coló, 2]
# si queremos limpiar el hash
ejemplo.clear #devuelve un {vacío}
# si queremos eliminar un elem en posición específica.
tutor.delete(:cursos) # devuelve {nombre: "Laura", apellido: "Coló"}
# podemos evaluar si el hash está vacío
puts ejemplo.empty? #true si está vacío, false sino
# si queremos una clave y no sabemos donde está
puts ejemplo.index('Laura') #devuelve nombre
puts ejemplo.key('Laura') #devuelve nombre
puts ejemplo.invert #transforma los keys en value
#para combinar dos hashes
user_info = {mascotas: 2}
puts tutor.merge(user_info) #genera un hash con ambas estructuras.
