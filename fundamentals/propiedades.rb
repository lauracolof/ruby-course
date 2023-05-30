# PROPIEDADES: Las propiedades de un objeto son valores que están asociadas sólo a ese objeto. Un objeto es una coleccion de propiedades y métodos. Se identifican por variables de instancia, son identificadores que le pertenecen a un objeto y no a la clase. Cada objeto puede tener valores distintos en cada una de sus propiedades o variables.
# Las variables de instancia inician con un @ => propiedad del objeto. No pueden ser modificadas u observadas desde fuera de la definición de la clase, no podemos leerlas ni acceder a su valor. Se pueden acceder desde cualquier parte del objeto, no importa si se declara en un método y se lee en otro.
# Cómo modificamos la propiedad o leemos la propiedad? Utilizamos métodos accesores, que definen como podemos modificar una propiedad y como leerla 

class Tutor
  def initialize(name)
    @nombre = name
    puts @nombre #acá se imprimen Uriel y Jose
  end 

  def say_my_name
    puts @nombre 
  end

  def nombre ##GETTERS
    @nombre
  end 

  def nombre=(nombre) ## SETTER
    @nombre = nombre
  end
end

uriel = Tutor.new('Uriel')
jose = Tutor.new('jose')
# puts uriel.nombre #da error 

uriel.say_my_name #imprime correctamente, aunque fue asignada dentro del constructor
jose.say_my_name #imprime correctamente, aunque fue asignada dentro del constructor

#! GETTERS: Sirven para leer propiedades (get)
#! SETTERS Sirven para asignar o modificar una propiedades (set)
# puts uriel.get_nombre #imprime Uriel
# uriel.set_nombre('Marcos') #reasigna a Marcos
# puts uriel.get_nombre #imprime Marcos 
# EN RUBY NO SE UTILIZAN GET O SET PARA PREFIJO DEL MÉTODO, como Java:  sino que se caracteriza por el caracter igual.

# puts uriel.nombre #para obtener la prop nombre
# uriel.nombre = "Marcos" #para asignar la prop nombre, en Ruby, esto significa que llamamos al método nombre= con el argumento Marcos, es la declaración y ejecución de un método.
# puts uriel.nombre #imprime Marcos.

#! Ruby tiene métodos que ayudan a evitar lo que está dentro del initialize: 
# attr_accessor :nombre => define getter y setter
# attr_reader :nombre => define getter
# attr_writer :nombre  => define setter

class TutorRuby
  attr_accessor :nombre
  # attr_reader :nombre
  # attr_writer :nombre
  def initialize(name)
    @nombre = name
  end
end

uriel = TutorRuby.new('Uriel')
# puts uriel.get_nombre #imprime Uriel
# uriel.set_nombre('Marcos') #reasigna a Marcos
# puts uriel.get_nombre #imprime Marcos 