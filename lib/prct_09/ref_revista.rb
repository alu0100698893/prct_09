#clase hija revistas la cual contiene los elementos propios de la bibliografia y los comunes de la clase padre

class Revistas < Bibliografia
    
    attr_accessor :volumen, :fasciculo, :articulo
    
    def initialize(autores, titulo, publicacion, edicion, volumen, fasciculo, articulo)
        super(autores,titulo,publicacion,edicion)   #llamada al constructor de la clase padre con los elementos comunes de la clase hijas
        @publicacion = publicacion
        @volumen = volumen
        @fasciculo = fasciculo
        @articulo = articulo
    end
    
    def to_s
        print "Revista: \n"
        print "#{@autores}, #{@titulo}, #{@publicacion}, #{@edicion}, #{@volumen}, #{@fasciculo}, #{@articulo}\n"
    end
    
end
