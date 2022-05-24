# pooRuby.rb
# Creando clases
# class → para declarar una clase.
# def → es para definir los métodos.
# initialize → es un método especial en Ruby para programación orientada a objeto que hace del constructor. Aquí se define se recibe o no recibe parámetros.
# @variable → Para declarar variables de instancia se utiliza el arroba
# self → esta hace referencia a la misma instancia, para que está forma podamos encadenar varios llamados.

Reduciendo la definición de una clase:
Forma 1:

class Persona  
  def initialize(name) #Constructor
    @name = name #Variable de instancia se inicializa con el parametro en el constructor
  end

  def name #Getter
    @name
  end

  def name=(name) #Setter
     @name = name
     self
  end
end
Forma 2:

class Persona
  attr_accessor(:name)  # Genera getter y setter

  def initialize(name)
    @name = name
  end
end
Forma 3:

class Persona < Struct.new(:name) #Struct declara el constructor, getters y setters
end
Forma 4 en una linea:

Persona = Struct.new(:name)

##################################-----------------------------------------------########################## 

class ClassName
    def initialize(parametros)
        @name = parametros
    end
end
# En Ruby todas las instrucciones de código retornan algo, por eso no hay que utilizar la palabra return. Así que si dentro de los métodos no se específica el return, Ruby entiende que se va returnar el valor de la última instrucción dentro de ese bloque de código.

class Persona
    # Para declarar Métodos de clases
    def self.suggested_names
        ["Pepe","Pepito","Sutano"]
    end

    # constructor
    def initialize(name, age)
        @name = name
        @age = age
    end

    #métodos de instancia
    def name
        @name
    end

    def age
        @age
    end

    # persona.name = "pepe"
    def name=(name)
        @name = name
        self
    end

    def age=(age)
        @age = age
        self
    end
end

persona = Persona.new("pepe", 14)
puts "#{persona.name} tiene #{persona.age} años."

# si queremos llamar al método que creamos, llamamos a la clase
puts "Nombre sugeridos: \n#{Persona.suggested_names}"
# Ruby gracias a la metaprogramación nos ofrece varios macros y varias utilidades para que no tengamos que escribir tanto código.

attr_accessor → es un macro que utilizamos para declarar propiedades de una clase.
#Class reducido primera forma
class Persona_2
    attr_accessor :name, :age

    # Para declarar Métodos de clases
    def self.suggested_names
        ["Pepe","Pepito","Sutano"]
    end

    # constructor
    def initialize(name, age)
        @name = name
        @age = age
    end
end

persona_2 = Persona_2.new("Carlos", 19)
puts "#{persona_2.name} tiene #{persona_2.age} años."

#Class reducido segunda forma
class Persona_3 < Struct.new(:name, :age)
    # Para declarar Métodos de clases
    def self.suggested_names
        ["Pepe","Pepito","Sutano"]
    end
end

persona_3 = Persona_3.new("Julian", 33)
puts "#{persona_3.name} tiene #{persona_3.age} años."