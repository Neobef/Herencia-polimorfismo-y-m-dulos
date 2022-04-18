module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_reader :nombre
    include Habilidades
    include Alimentacion
    def initialize(nombre)
        @nombre = nombre
    end
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto < Animal
end

class Pinguino < Ave
    include Caminante
    include Carnivoro
    include Nadador
end

class Paloma < Ave
    include Caminante
    include Carnivoro
    include Volador
end

class Pato < Ave
    include Caminante
    include Carnivoro
    include Volador
    include Nadador
    include Herbivoro
end

class Perro < Mamifero
    include Caminante
    include Nadador
    include Carnivoro
end

class Gato < Mamifero
    include Caminante
    include Nadador
    include Carnivoro
end

class Vaca < Mamifero
    include Caminante
    include Herbivoro
end

class Mosca < Insecto
    include Volador
    include Caminante
    include Herbivoro
    include Carnivoro
end

class Mariposa < Insecto
    include Volador
    include Caminante
    include Herbivoro
end

class Abeja < Insecto
    include Volador
    include Caminante
    include Herbivoro
    include Carnivoro
end

gato = Gato.new("Lu")
puts gato.nombre
puts gato.caminar
puts gato.nadar
puts gato.comer

pinguino = Pinguino.new("Chilly Willy")
puts pinguino.nombre
puts pinguino.caminar
puts pinguino.comer
puts pinguino.nadar