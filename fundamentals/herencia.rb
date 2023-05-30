#! HERENCIA: Proceso de crear clases a partir de otras. Clases Padre (base): de las que se hereda. Clases Hijas (subclases), nuevas clases basadas en las padre. Las subclases heredan todas las propiedades y métodos de la clase base, puede comportarse exactamente igual y a su vez pueden tener nuevos métodos o propiedades. Son como una especialización del padre. Es para poder mejorar la performance y el tiempo de desarrollo. En ruby las clases sólo pueden heredar de una sola clases padre.


class Video 
  #atributos
  attr_accessor :title, :duration, :description
  def embed_video_code
    "<video></video>"
  end
  #método de config
  def setup(title)
    @title = title
  end
end


#! Sintaxis para heredar: subclase < clase base, si no se avisa que se hereda de otro, todas las clases heredan de Object. 
class YoutubeVideo < Video
  attr_accessor :youtube_id
      # OVERIDE: sobreescribir un método. Si comparten la etiqueta de,se define el propio.
      def embed_video_code
        "<iframe />"
      end

      def setup(title)
        super 
        #la palabra clave super, nos sirve para llamar al método del mismo nombre pero en la clase padre. Le envía los argumentos al padre. Si enviamos super() => se evita que se le envíe la lista de argumentos que se reciben, si hay otros.
        #queremos sobreescribir sin perder lo que hacia el padre
        #puts "Funcionalidad extra"

      end
end

class FacebookVideo < Video
  attr_accessor :facebook_id

end


yt = YoutubeVideo.new
yt.title = "Herencia en Ruby"
yt.youtube_id = 'asdas546a5sf'
puts yt.title #imprime el título
puts yt.youtube_id #imprime el id

puts YoutubeVideo.new().embed_video_code #imprime <iframe />

yt = YoutubeVideo.new
yt.setup('Otra herencia de Ruby')
puts yt.title
