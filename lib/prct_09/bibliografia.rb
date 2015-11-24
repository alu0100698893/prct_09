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

    def <=>(other)

		return nil unless other.is_a?Bibliografia   #retorna nil si se cumple que no se cumpla el is_a? y salimos
		
		@autores  <=> other.autores
		
    end
	
	def ==(other)
		
		if other.is_a?Bibliografia
		    
		    @titulo == other.titulo && @autores == other.autores && @publicacion == other.publicacion && @edicion == other.edicion
		
		else
		    false
		end
	end

end
