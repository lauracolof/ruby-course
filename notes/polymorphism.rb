#! Polimorfismo: concepto de POO que describe la habilidad de que múltiples objetos respondan de manera distintas al mismo mensaje. Ejemplo: si le dijeras a un cocinero, a un actor y a un estilista "corte": todos reaccionarían de manera distinta, el mensaje es el mismo pero la respuesta es distinta. Asociado con herencias e interfaces.
#! Ventajas: Tratar obj como si fueran genéricos sin preocuparte por el contenido o las instrucciones internas, sino porque todos responden a las mismas instrucciones. 


class Video 
  def play
    #Not implemented
  end
end

class Vimeo < Video
  def play
    p "Inserta el reproductor de Vimeo"
  end
end

class Youtube < Video
  def play
    p "Inserta el reproductor de YT"
  end
end

#tenemos obj de diferentes tipos pero responden al método play heredado de Video.
videos = [Youtube.new, Vimeo.new, Youtube.new, Vimeo.new]

videos.each do |video|
  # al ejecutar cada uno responde de la manera que definimos en cada subclase. En la iteración no aclaramos nada.
  video.play
end

#! En Ruby no existen las interfaces, pero existe DuckTyping: si camina como pato, suena como pato, entonces debe ser un pato. No importa de que tipo es el obj, si tienen los atributos o métodos que necesitamos trátalo como lo necesitamos. (Si puede hacer play, es un video). Incluso si lo escribieramos sin la herencia funcionaría igual, si las instrucciones están ahí, debe ser suficiente. Sólo debes poner las mismas instrucciones en cada obj.