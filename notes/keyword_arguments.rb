#! KEYWORD ARGUMENTS: Argumentos con nombre, característica introducida en ruby2, mejorada en ruby 2.1. Tenemos tipo del argumento y un valor inicial. **options. En ruby 2.1 se añadieron los argumentos requeridos u obligatorios: si no colocamos nada luego de los dos puntos.

def saludar(nombre: "", edad: 0, **options)
  
  if edad > 40 
    puts "Hola sr, #{nombre} "
  elsif edad < 40
    puts "Hola joven, #{nombre}"
  end
  puts options[:animal_favorito] #recibimos todo lo otro en forma de hash {:animal_favorito => "foca", :vehículo => "auto"} y se acceden 
end

saludar(nombre: "Laura", edad: 33) 

#?Ventajas: 
# 1. valores opcionales. También tiene valores por default.
# 2. el orden de los valores es arbitrarios, se toman correctamente
# 3. **options, doble splat, combinación de parámetros dinámicos
# 4. al tener nombres, es fácil volver a llamarlos aunque no esté en el método directamente.
#saludar(nombre: "Laura", edad: 33, "animal_favorito": foca, "vehículo": auto) 
#(nombre:, edad: 0, **options) =>si no enviamos nombre, retorna error: missing keyword: nombre