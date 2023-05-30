#! BLOQUE no es un objeto, es parte de la sintaxis de la ejecucion de un método. Un bloque solo puede ser definido cuando se envía un método. Cuando recibimos una variable con & para recibir un bloque, no estamos recibiendo un bloque, sino un prop. La variable es un Proc

bloque = {puts "Noope"} # no es válida la sintaxis

def hello &block
  block.call #mandamos a llamar al método call sobre la variable block.
end

hello {puts "Yap"} # esto si es válido

#! DIFERENCIAS ENTRE UN BLOQUE Y UN PROC: son iguales son las siguientes excepciones
# 1- los bloques no son obj y los procs si
# 2- los procs pueden ser almacenados en variables y pasados como argumentos y intercambiar entre métodos, los bloques no pueden ser almacenados en variables ni intercambiar. 
# 3- un método puede recibir solo un bloque pero multiples procs. 

# Cuando utilizarlos? Por defecto usar bloques, excepto que se necesite que solo pueda hacer el proc, como almacenarlo, compartirlo entre métodos, o utilizar más de uno. Los bloques son más rápidos, como block.call y yield. Cuando utilizamos el método con & se debe crear un obj proc y lo hace más lento.

def hello proc1, proc2
  proc1.call
  proc2.call
end
proc1 = Proc.new{ puts "Hola proc1" } 
proc2 = Proc.new{ puts "Hola proc2" } 