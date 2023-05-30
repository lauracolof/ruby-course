#! Yield es el punto en la definición del método donde se ejecuta el bloque de código recibido. Cuando dentro del método hola, el intérprete encuentre "yield", ejecutará las intrucciones que recibimos más abajo. Si no le enviamos ningun bloque: "hola": no block given (yield), el intérprete encuentra yield pero no encuentra bloque a ejecutar, podemos recurrir al método "yield block_given?"
# Si se comportan igual cuando se usa YIELD o &: & especialmente útil al utilizar patron lazy e inizialization. Yield es la opción por defecto, preferentemente utilizar yield si no hay buena razón. Incluso & es más lenta.

def hola
  yield #sin esta palabra reservada no se imprime nada.
  yield if block_given? #si recibe block da true, no da error
end

hola {puts "Hola Laura"}

#! Existe otra manera de recibir los bloques, colocando &(nombre del bloque). IMPORTANTE: el argumento que recibe es el último que recibe el bloque debe ser el último de la lista de args. Los argumentos tienen que ir siempre antes de la declaración del argumento del bloque.
def hola nombre, &block #si lo hicieramos al reves daria error
  block.call if block_given? #forma de llamar al método
end
 
hola(nombre) {puts "Hola mundo"} #si lo hicieramos al reves daria error

#! tambien se puede utilizar yield, se comporta igual pero tenemos el bloque almacenado dentro del bloque, puede ser que se envíe a otro método también, se pueden pasar entre. Con esta sintaxis se pueden pasr los bloques entre sí.



def hola &bloque
  otro_hola(&bloque)
end

def otro_hola & block
  puts "Llamado desde otro_hola" #imprime ambos 
  block.call
end

hola { puts " Hola mundo "} #imprime ambos 



#! ARGUMENTOS Y VALOR RETORNAR EN BLOQUE: Al llamar el argumento con yield le estoy enviando un argumento con la prop name del user. Los argumentos que recibe un bloque se enlistan entre || separados con una coma. {|arg1, arg2,...| } . Un bloque puede retornar un valor. El valor que un bloque retorna es el resultado de la última expresión del bloque mismo, pero no es válido la palabra return.

class User 
  attr_accessor :name

  def greeting
    yield(@name) #ten el nombre del user y saluda como quieras
  end
end

uriel = User.new
uriel.name = 'Uriel'
uriel.greeting { |name| puts "Hola #{name}"}
uriel.greeting { |name| puts "Hello #{name}"}

class User 
  attr_accessor :name

  def greeting_with
    greet = yield(@name) #Un bloque puede retornar un valor
    puts greet #imprimomos
  end
end

uriel.greeting_with do |name|
  greet = "Hola #{name}"
  saludo
end


#! ALCANCE DE VARIABLES EN UN BLOQUE: Un bloque hereda el contexto en el que es ejecutado, por eso se compara con closures en otros lenguajes. En este caso, imprime Hola John, la variable name no fue declarada dentro del bloque ni enviada como arg, pero el bloque tiene acceso a esta variable, porque el bloque recibe las variables locales donde se está ejecutando, entonces es parte del contexto donde se ejecuta. El bloque también puede modificar esas variables. 


def initialize
  yield    
end

name = 'John'
hola {puts "Hola #{name}"}

#! Cualquier modificación que hagamos a una variable fuera del bloque se mantienen incluso cuando la ejecución terminó, porque son las mismas variables. 

hola do 
  name='Jane'
  puts "Hola #{name}"
end 
puts name; #imprime Jane

#! A su vez el bloque puede definir variables que sean locales del mismo, que solo puedan ser utilizadas dentro del mismo bloque. Por ejemplo los argumentos que recibe el bloque son del mismo.

def hello 
  yield('Uriel')
end

hello do |name|
  puts "Hello #{name}"
end
#La ejecución del bloque funciona bien, pero (puts name) da error dado que nombre es exclusiva del bloque y fuera no existe definición y desaparece al finalizar la ejecución del bloque.
puts name

#Los bloques tmb pueden definir variables locales que no sean argumentos utilizando la siguiente sintaxis.

def hola 
  yield 
end

nombre = "Jane"

hola do |; name | 
  #variable local name, dentro del bloque toma el valor de John, pero fuera se mantiene igual. La sintaxis del punto y coma separa los argumentos de variables locales. Si recibiera argumentos sería |arg1, arg; var 1, var 2| . a la izq argumentos, a la derecha variables.
  name = 'John'
  puts "Hola #{name}"
end

puts name


