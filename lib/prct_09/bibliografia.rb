#Clase padre para las bibliografia tanto de los libros como revistas periodicos entre otras cosas

class Bibliografia

    attr_accessor :autores , :titulo , :publicacion, :edicion #geters y serters 
    
    include Comparable  #Insercion del modulo comparable.

    def initialize(autores, titulo, publicacion, edicion) #el constructor solo contiene los elementos comunes a ambas clases hijas
        @autores = autores
        @titulo = titulo
        @publicacion = publicacion
        @edicion = edicion
    end
end