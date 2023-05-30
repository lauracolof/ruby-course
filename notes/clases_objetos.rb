#! CLASES: definen el comportamiento que los objetos tendran. Se encarga de definir atributos, métodos, campos y eventos. Se define con la palabra reservada CLASS, el nombre con la primer letra mayúscula y si es compuesta, camel case. Termina con la palabra end.

#! OBJETOS: Creamos los objetos a partir de las clases. Cuando creamos un objeto de una clase, se instancia un nuevo objeto. Lo que se modifique no modifica la clase en general. 

#! CONSTRUCTOR: Initialize. La característica es que se ejecuta cuando creamos un objeto de una clase, y suele utlizarse para inicializar valores que el objeto tendrá. Puede recibir argumentos 
# SELF: 
#Si fuera un menú de restaurante, las clases serían la receta y el plato el objeto. 

class Video
  #Atributos:
  attr_accessor :minutes, :title
  def initialize(title)
    # aca es el punto adecuado para que hagamos que inicialicen cosas en el objeto, pero no es aconsejable dejarle mucho "trabajo". Si el constructor debe hacer mucho trabajo, tendríamos que simular ese código y puede hacer que el objeto deje de cumplir sus funciones.
    self.title = title
  end 

  #Métodos: 
  def play
  end

  def pause
  end

  def stop
  end 

end


curso_ruby = Video.new #Nuevo objeto guardado en la variable curso_ruby. 
curso_ruby.title = "Objetos y clases"
puts curso_ruby.title #imprime: Objetos y clases

curso_ruby_alt = Video.new #Nuevo objeto guardado en la variable curso_ruby_alt. 
curso_ruby_alt.title = "Atributos"
puts curso_ruby_alt.title #imprime: Atributos

#! Con initialize.
curso_ruby_initialize = Video.new("Object and class")
puts curso_ruby_initialize.title #Imprime: Objects y class