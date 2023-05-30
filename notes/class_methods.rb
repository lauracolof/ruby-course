#En ruby todo es un objeto. 
#! La particularidad de los métodos de clase (métodos estáticos en otros lenguajes). Se mandan a llamar sobre la clase y no sobre una instancia o un obj de dicha clase. La particularidad que los distingue es que antes de ellos hay una referencia SELF: que es el objeto de la clase y por eso el método le pertenece a la clase. 

class SoyUnObjeto
  #!variable de instancia, definida a nivel de la clase y no de un metodo como el constructor, sino al obj y se distinguen por tener un @ antes del nombre
  @nombre_clase = 'Soy un objeto'

  #método de clase
  def self.nombre_clase
    @nombre_clase #retornamos nombre_clase
  end

  #setter que recibe var=nombre_clase y se la asigna a la variable de instancia. y podemos reasignar el valor
  def self.nombre_clase=(nombre_clase)
    @nombre_clase = nombre_clase
  end

  #! otra forma de definir métodos de clase: y ya no tenemos que definir self. sino con << self. el comportamiento es similar.
  class << self 
    def nombre_clase_nuevo
      @nombre_clase_nuevo #retornamos nombre_clase
    end
  end
end

puts SoyUnObjeto.nombre_clase #imprime "soy un objeto" Se mandan a llamar de la clase. la var de instancia nombre_clase pertenece a SoyUnObj
puts SoyUnObjeto.nombre_clase='Otra cosa' #podemos reasignar el valor


#! Cuándo debo utilizarlos? cuando no le pertenece a ninguna instancia u obj, ejemplo: user y se ejecuta sobre el active_records de rails:

class User 
end

# User.find() => esta funcionalidad no le pertenece a ningun obj, no tiene sentido crear un usuario para y que ese usuario buscara a otro usuario


#! VARIABLES DE CLASE: se identifican porque comienzan con @@ (doble arroba) al principio de la clase. 
# Características: 
# 1. es que pueden ser usadas desde métodos de clase o métodos del obj
# 2. su comportamiento cuando hay herencia. 
# 3. cuándo usarla? Cuando queremos almacenar una variable que le pertenece a la clase y no al obj, como con figuras (Triangle) USAR DE INSTANCIA CUANDO NO QUEREMOS QUE SE HEREDE A HIJAS, sino la de clase.
class Triangle 
  @@side = 3
end

class Video
  @@type = 'video/mp4'

  def self.type_desde_clase
    p @@type
  end

  def type_desde_obj
    p @@type
  end
end


class Video2 
  @@de_clase = 'Clase'
  @de_instancia = 'Instancia'
end

class Youtube < Video2
  def self.test
    p @@de_clase # se heredó
    p @@de_clase = "clase cambiada" # se modifica y se va a ver reflejado en clase base y heredadas
    p @de_instancia #la de instancia solo le pertenece al video => retorna nill.
  end
end



#las de clase se pueden métodos de clase o de obj, si no tuviera doble @@, solo un @ (sería var de instancia) la impresión cambia, pero en la de obj obtenemos nill. y en clase "video/mp4"
Video.type_desde_clase
#
Video.new.type_desde_obj