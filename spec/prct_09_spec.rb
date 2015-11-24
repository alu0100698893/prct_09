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


