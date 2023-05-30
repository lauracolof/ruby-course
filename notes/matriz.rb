#! Las características de una matrix que lo diferencia con un array, es la cantidad de dimensiones. Los array son planos, cuando introducimos uno dentro de otro, tiene otra dimensión. Tienen que tener la misma cantidad de elem. Las matrices se distinguen porque tienen una amplia serie de aplicaciones matemáticas (diagonal, orthogonal, etc ) y todos los elementos deben ser números.

arrayNormal = []
arrayMatriz = [1, 2, 3, [4, 5, ]]

#! MATRIX
#! IMPORTANTE: debemos importar la clase Matrix, each tiene modificadores en las clases matrices. se puede imprimir la diagonal
require 'matrix'
matriz = Matrix[[1, 2, 3], [5, 6, 7], [5, 2, 2]]
# [
#   1, 2, 3
#   5, 6, 7
#   5, 2, 2
# ] 

#podemos iterarlo.
matriz.each do |i|
  puts i #imprime 1, 2, 3, 5, 6, 7, 5, 2, 2, izq a derecha
end

# imprimir diagonal 
matriz.each(:diagonal) do |i|
  puts importar # imprime 1, 6, 2
end

#imprimir los númers abajo a la diagonal
matriz.each(:strict_lower) do |i|
  puts i # imprime 5, 5, 2

end
#imprimir los númers arriba a la diagonal
matriz.each(:strict_upper) do |i|
  puts i # imprime 2, 3, 7
end

#para identificar si la matriz es cuadrada: los elem fuera de la matriz tienen que ser 0. Entonces da true, si es cuadrada pero no son 0, da false. Si no es cuadrada: Matrix dimension mismatch
puts matriz.diagonal?
# [
#   1 0 0
#   0 3 0
#   0 0 2
# ]

#? OTROS METHODS DE UNA MATRIX:
=begin
Properties: 
diagonal? empty? hermitian? lower_triangular? normal? orthogonal? permutation? real? regular? singular? square? symmetric? unitary? upper_triangular? zero?
Functions: 
determinant, det, rank, round, trace, tr, transpose, t
Arithmetic:
#*(m)
#+(m)
#-(m)
#/(m)
inverse
inv
#**
=end




