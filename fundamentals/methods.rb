#! METHODS: Grupo de código que se puede reciclar. Los métodos se inicializan con la palabra reservada def, después el nombre de este, al finalizar end. Dentro del bloque, son las instrucciones a ejecutar. Se llama con el nombre de la funcion y () -incluso se pueden ignorar-. Al pasar argumentos, lo mejor es utilizarlos, excepto que estemos utilizando DSL -> Domain Speficiy Language 

def square(x)
  #retorna el cuadrado de un numero. Return siempre retorna lo que encuentra en la última linea. Si queremos cortar la función antes de la linea final, sino no se usa.
  return 0 unless x.is_a? Integer #si no es entero, return 0
  x * x
end
puts square(2) #retorna 4

def saludar
  puts "Hola mundo"
end

saludar() # remarca que es la ejecucion del método.