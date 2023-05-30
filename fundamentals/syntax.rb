# No hay ; al final de las sentencias, podemos ponerlos si no se queja el editor. Normalmente se ven si hay dos lineas de código en la misma linea.

=begin Comentarios # estos comentarios son por línea de código. También se puede utilizar =begin y =end al principio y al final, pero no se puede si no queda pegado, sin tabulación
=end 

#PARÉNSETIS
#logger.info('No valid identity token present') => acá se está ejecutando la función info con el argumento de no valid. Los parenteis en ruby son OPCIONALES
# get '/login' =>  acá no se usan los paréntesis, la recomendación es que se utilicen sin paréntesis cuando estamos en DSL, domain specific language.

#Snake_case => en ruby la recomendación es utilizarlo, excepto en las clases. como: validator = GoogleIDToken. En otro tipo de método se utiliza _ : 
# target_url = Google::Auth::WebUserAuthorizer.handle_auth_callback_defored