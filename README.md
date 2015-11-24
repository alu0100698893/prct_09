**
**Practica 9: POO.Módulos**
===========

**Autor:Alberto Martínez Chincho**
-----------

**Introducción:**
-------------
En esta practica vamos a desarrollar los módulos Mixin Enumerable  y Comparable. 
Usaremos el modulo Comprable  para la jerarquía de clases que desarrollamos en la practica anterior con algunas modificacion para poder usar correctamente este modulo.
Usaremos el modulo Enumerable para la parte de la lista doblemente enlazada de nuestra practica anterior con alguna modificación para el buen uso de este modulo.
Por último desarrollaremos un código de TDD para realizar las pruebas y comprobar que los códigos que vamos desarrollando tanto de la jerarquía de clases como de la lista están bien desarrollados.

## **Ficheros:** ##
En nuestra practicas podrás encontrar los ficheros necesarios para la resolución de dicha practica , los cuales se especifican a continuación:
		1.**.gitignore** --> Contiene todas las extensiones de los ficheros que queremos ignorar durante nuestro trabajo. 
		2.**Readme.md** --> Contiene la explicación e informe de nuestra practica.
		3.**double_lista**-->Contiene la implementación de la lista.doblemente enlazada, ademas de incluido el modulo Enumerable.
		4.**bibliografia**-->Contiene la clase padre para la jerarquía de clases que estamos realizando,además del modulo Comparable incluido y las clases de **<=>** ,**==** para poder usarlo en las pruebas. 
		5.**ref_libro**-->Contiene la clase hija de la clase bibliografia, esta clase contiene lo necesario para realizar una referencia de un libro.
		6.**ref_revitas**-->Contiene la clase hija de la clase bibliografia, esta clase contiene lo necesario para realizar una referncias de una revista.
		7.**prct_09_spec**-->Fichero que contiene las TDD necesarias para la clase hijas y listas.
		8.**.travis.yml**-->Fichero que contiene las versiones con las que queremos comprobar si nuestro código es compatible y funciona.

## **Resolución de la practica:** ##
En esta practica hemos reciclado un poco de código de la practica que realizamos la semana pasada, además le añadimos los módulos de Comparable y Enumerable que era lo que nos pedía esta práctica, tuvimos que modificar la clase padre **Bibliografias** añadiéndole dos clases nuevas para poder usarla en las pruebas y comprobar que el modulo Comparable funcionaba correctamente.
En la clase **Doble_lista** añadimos el modulo Enumerable para luego comprobar su funcionamiento en las TDD.
Dejando aun lado la explicación de la parte principal de la practica, hemos de decir que modificamos otra serie de ficheros como son, el **.gitignore** para ignorar los ficheros que no queremos que suban a nuestro repositorio, **README.md** el cual contiene el informe de la practica que hemos realizado y el **Rakefile** el cual usamos para poder ejecutar de manera automática las pruebas (TDD) escribiendo en la consola el comando **rake** .
Volviendo al desarrollo principal de la practica lo que modificamos y desarrollamos fueron las TDD necesarias para ver como ir desarrollando nuestro código en función a la salida de las pruebas .