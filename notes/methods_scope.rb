#Los métodos de un objeto en Ruby se clasican en 3, el alcance hace referencia a desde donde uno puede llamarla.
#! PUBLIC -> Métodos de una clase, pueden llamarse desde cualquier lugar, por defecto todos los métodos que creamos son públicos. No tienen restricciones
#! PRIVATE -> Pueden llamarse únicamente desde dentro de la clase base o hija. En Ruby, una clase hija sí hereda los métodos privados del padre.
#! PROTECTED -> Puede llamarse desde otras clases siempre y cuando sean del mismo tipo.

class Human 
  def initialize
    privado #dentro se puede llamar    
  end 

  def public 
    puts "Soy publicó"
  end

  private 
    def privado
      puts "Soy privado"
    end
  #no son comunes.
  protected 
    def protegido
      puts "Soy protegido"
    end
end


class Tutor < Human
  def initialize
    @inner = Human.new
  end
  
  #! las clases hijas tmb pueden llamar a los privados
  def initialize
    privado
  end

  #! la clase hija puede llamarlo
  def initialize
    protected
  end

  def call_protected
    @inner.protected
  end
end

class Alien 
  def initialize
    @inner = Human.new
  end

  def call_protected
    @inner.protected
  end
end



Human.new #imprime "Soy público"
Human.new.privado #private method 'privado' called for #Human, está fuera de la def de la clase y no se puede llamar.
Tutor.new # También imprime "Soy público"
Tutor.new.call_protected #puede llamarse desde fuera mientras sea hija, si fueran privados fallan directo
Alien.new.call_protected #no puede llamarlo, si fueran privados fallan directo
tutor = Tutor.new
puts tutor.is_a?(Human) #es tipo Human: true, porque hereda
alien = Alien.new
puts alien.is_a?(Human) #es tipo Human: false, no hereda

