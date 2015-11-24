require 'spec_helper'
require 'prct_09/bibliografia'
require 'prct_09/double_lista'
require 'prct_09/ref_revista'
require 'prct_09/ref_libro'

describe Bibliografia do

  before :each do
    #referencias almacenadas como objetos de la clase Bibliografias
    @libro_1 = Bibliografia.new("Dave Thomas, Andy Hunt, Chad Fowler","Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide. (The Facets of Ruby)","2008","4")
    @libro_2 = Bibliografia.new("Scott Chacon","Pro Git 2009th Edition. (Pro)","2009","2009")
    @libro_3 = Bibliografia.new("David Flanagan, Yukihiro Matsumoto","The Ruby Programming Language","2010","1")
    @libro_4 = Bibliografia.new("David Chelistamsky, Dave Astels, Bryan Helmkamp, Dan North, Zach Dennis, Aslak Hellesoy","The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends (The Facets of Ruby)","2013","1")
  end

 #Pruebas con la lista y con los nodos
  describe Doble_lista do
  
    before :each do
      #Nodos que contienen las referencias para hacer las pruebas
      @nodo1 = Nodo.new(@libro_1)
      @nodo2 = Nodo.new(@libro_2)
      @nodo3 = Nodo.new(@libro_3)
      @nodo4 = Nodo.new(@libro_4)
      @lista = Doble_lista.new
      
      @lista1 = Doble_lista.new
      @lista1.insert_head(@nodo1)
      @lista1.insert_head(@nodo2)
      @lista1.insert_head(@nodo3)
      @lista1.insert_head(@nodo4)
      
    end

  describe "Nodo" do
   
    it "#Debe existir un Nodo de la lista con sus datos y su siguiente" do
      expect(@nodo1.class).to eq(Nodo)
    end 
  
  end
  
  describe "Lista" do

    it "#Se extrae el primer elemento de la lista" do
      @lista.insert_head(@nodo1)
      expect(@lista.remove_head()).to eq(@nodo1.value)
    end
    
    it "#Se puede insertar un elemento" do
     	  @lista.insert_head(@nodo2)
     	  expect(@lista.head.value).to eq(@nodo2.value)
    end
    
    it "#Se pueden insertar varios elementos" do
      @lista.insert_head(@nodo3)
      @lista.insert_tail(@nodo4)
      @lista.insert_head(@nodo2)
      
      expect(@lista.remove_head()).to eq(@nodo2.value)
      expect(@lista.remove_tail()).to eq(@nodo4.value)
      expect(@lista.remove_head()).to eq(@nodo3.value)
    end
    
    it "#Debe existir una lista con su cabeza" do
      @lista.insert_head(@nodo2)
      expect(@lista.head.class).to eq(Nodo)
    end
    
        it "#Pruebas para utilizar el Mixin Enumerable - Funcion maximo" do #coje de los nodos de de la lista el de mayor rango
        
      	expect(@lista1.max).to eq(@libro_2) 
    end
    
    it "#Pruebas para utilizar el Mixin Enumerable - Funcion minimo" do #coje de los nodos de la lista el de menor rango 

      	expect(@lista1.min).to eq(@libro_1) 
    end   
      
    it "#Funcion sort: Devuelve las salidas a la inversa segun la publicacion " do  #
        p = @lista1.sort{|b, a| a.publicacion <=> b.publicacion}
        expect(p).to eq([@libro_4,@libro_3,@libro_2,@libro_1])
    end
      
    it "#Funcion include" do
      	expect(@lista1.include?@libro_1).to eq(true)
      	expect(@lista1.include?@libro_2).to eq(true)
      	expect(@lista1.include?@libro_3).to eq(true)
      	expect(@lista1.include?@libro_4).to eq(true)
    end
      
    it "#Funcion each" do
      	expect(@lista1.each{|x|}).to eq(@lista1.to_s)
    end
    
  end
  
end

    describe Revistas do  #Pruebas con la clase hija revistas
  
    before :each do
      @revista = Revistas.new("Jacobson Martin","Isolation,Indentification and Synthesis of the Sex Attractant of Gypsy Moth","Oct. 14, 1960","first edition","vol. 132","n. 3433","Sciense")
    end
    
    it "#El objeto pertenece a la clase" do
      expect(@revista.class).to eq(Revistas)
    end
    
    it "#El objeto pertenece a la jerarquia" do
      expect(@revista.class.superclass).to eq(Bibliografia)
    end
    
    it "#El objeto pertenece a la clase Object" do
      @revista.is_a? BasicObject
    end
    
     it "#El objeto pertenece a la clase BasicObject" do
      @libro.is_a? BasicObject
    end
    

    describe Libros do  #Pruebas con la clase hija libros
  
        before :each do
          @libro = Libros.new("Richard E. Silverman","Git Pocket Guide","August 2, 2013","1","O’Reilly Media","1449325866, 978-1449325862")
        end
        
        it "#El objeto pertenece a la clase" do
          @libro.class == Libros
        end
        
        it "#El objeto pertenece a la jerarquia" do
          expect(@libro.class.superclass).to eq(Bibliografia)
        end
        
         it "#El objeto pertenece a la clase Object" do
          @libro.is_a? Object
        end
        
         it "#El objeto pertenece a la clase BasicObject" do
          @libro.is_a? BasicObject
        end



