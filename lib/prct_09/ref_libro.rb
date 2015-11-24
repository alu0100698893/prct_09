#clase hija libros la cual contiene los elementos de su clase padre y los suyos propios

class Libros < Bibliografia

    attr_accessor :editorial, :isbn

    def initialize(autores, titulo, publicacion, edicion,editorial, isbn) #llamada al constructor de la clase padre con los elementos comunes de las clase hija
        super(autores,titulo,publicacion,edicion)
        @editorial = editorial
        @isbn = isbn
    end

    def to_s
        print "Libro: \n"
        print "#{@autores}, #{@titulo}, #{@publicacion}, #{@edicion}, #{@editorial}, #{@isbn}\n"
    end

end
