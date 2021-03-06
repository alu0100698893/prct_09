#clase doble_lista que contiene nuestra lista doble para almacenar los nodos con las referencias a libros y revistas 

Nodo = Struct.new(:value, :siguiente, :previo)

class Doble_lista
    
    attr_accessor :head, :tail, :contador
    
    include Enumerable  #Añadimos elmodulo de enumerable para la doble lista.
    
    def initialize
        @head = nil     #inicio de la lista
        @tail = nil     #fin de la lista
        @contador=0     #variable que determina el tamaño actual de la lista
    end
    
     
    def empty
        return contador==0
    end
    
    def insert_head(nodo)
        
        if empty == true            #Si la lista esta vacia insertamos el elemento en la lista vacia
            nodo.previo = @tail
            nodo.siguiente = @head
            @head = nodo
            @tail = nodo
        else                        #Si no esta vacia insertamos por el head 
            nodo.previo = @head
            nodo.siguiente = nil
            @head.siguiente = nodo
            @head = nodo
        end
        @contador = @contador + 1   #Aumentamos variable que indica tamaño de la lista 
        
    end
    
    def remove_head
        aux = @head
        @head = @head.previo
        
        if @head != nil             #Si head no es nil ponemos el siguiente de head como nil para desenlazar la lista
            @head.siguiente = nil
        else                        #Si el elemento que se extrae es el unico de la lista entonces ponemos todo a nil como en initialize
            @tail = nil
        end
        
        @contador = @contador - 1
        return aux.value
    end
    
     def insert_tail(nodo)
        if empty                    #Si esta vacia insertamos en lista vacia
            insert_head(nodo)
        else                        #Si no insertamos por el tail
            nodo.siguiente = @tail
            nodo.previo = nil
            @tail.previo = nodo
            @tail = nodo
            @contador = @contador + 1
        end
    end
    
     
    
    def remove_tail
        if @contador == 1
            return remove_head
        else    
            actual = @tail
		    @tail = @tail.siguiente
		    
		    if @tail != nil
		        @tail.previo = nil
		    end   
		    @contador = @contador - 1
		    return actual.value
        end
    end
    
    def to_s
        aux = @tail
        
        if empty != true
            puts "\n******REFERENCIAS BIBLIOGRAFICAS******"
        end
        while aux != nil do
            print "#{aux.value}\n\n"
            aux = aux.siguiente
        end
        
    end
    
    def each            #El metodo each recorre cada elemento 
	
	   actual = @tail
	
		while actual != nil
		   yield actual.value
		   actual = actual.siguiente
		end
	
    end
   
end
