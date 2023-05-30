=begin

## OPERADORES ARITMÉTICOS
x + y #técnicamente es un método
#puts (20+10) => 30
x - y # => 5
x * y # => 50
x / y # => 2
# el resultado decimal solo se da al dividir dos decimales
10.0 / 3.0 

# módulo: da el residuo de division
numero = gets.chomp #quitamos salto de linea
numero = numero.to_i # convertimos a entero
residuo = numero % 2 #si da 0 es par, sino impar
if residuo == 0
  puts "#{numero} es par"
end

#potencia: para saber el cuadrado de un numero, el numero a la derecha es la potencia
3 ** 3 | 3 ** 2 

Precedencia:  
  1. ** (exponencial)
  2. * / % (empate multiplicacion, division y porcentaje)
  3. + - (resta y suma)
  20 - 10 * 2 (los lenguajes lo evauluarian como 0)
  
  en este caso va de izq a derecha --->
  10 * 2 / 5 (resultaría 4)

  Para alterar la precedencia es con paréntesis:
  (20 - 10) * 2 => acá si da 20, primero paréntesis

  
## OPERADORES COMPARACIÓN
10 > 5 true
10 < 5 false
10 >= 5 true
5 <= 5 true
<=> combinado: devuelve 3 posibles valores, 
10 <=> si ambos son iguales devuelve 0 
20<=> si el primero es mayor devuelve 1
10 <=> si el mayor es el segundo devuelve -1
== solo devuelve true, también acepta strings
1 == 1.0 tmb da true, el tipo de dato es distinto
1.eql=(1.0) retorna falso, eql? compara que sean mismo valor y tipo
"hola".eql?("hola") retorna true
"hola".equal?("hola") retorna false => los valores que utilizamos tienen un objID, sólo devuelven true si tienen el mismo object_id. si hacemos "hola".object_id, dan numeros distintos, aunque tengan mismo string. equal? sirve para identificar si el segundo objeto es la misma ref que el primero.
10!=10 false || 10!=8 true.
  
## OPERADORES LÓGICOS (and o or, con la palabra o el simbolo cambia la precedencia, siempre se utiliza el símbolo, excepto que haya una situación que lo amerite.)
se utilizan con condicionales true or false
(10 > 5) && (5 < 8) => true, ambas tienen que ser true, sino false
(10 > 5) || ('ajfhkajdsa') => una de ambas tiene que ser true, aunque la segunda ni exista.

!true, !false => invierten a false y true.

asi como los operadores y precedencia, algunos se ejecutan primero que otros:
1. **
2. !
3. * / %
4. + - 
5. < > <= >=
6. == <=> !=
7. &&
8. || 
9. Asignación
10. not
11. or - and (|| - &&)
=end