# regexRuby
** Regex o «expresiones regulares»**

Una expresión regular viene a ser un patrón, que se ajusta a un string para que coincida o no, son una poderosa herramienta para trabajar con texto.

Un regex se declara entre slash “/”
Un regex puede tener multiples matches
Algunas abreviaciones para clases de caracteres

Todas las abreviaciones precedentes, también tienen una forma negada. Para ello, se pone la misma letra en mayúsculas:
Expresión	significado
.	cualquier carácter
[]	especificación por rango. P.ej: [a-z], una letra de la a, a la z
\w	letra o número; es lo mismo que [0-9A-Za-z]
\W	cualquier carácter que no sea letra o número
\s	carácter de espacio; es lo mismo que [ \t\n\r\f]
\S	cualquier carácter que no sea de espacio
\d	número; lo mismo que [0-9]
\D	cualquier carácter que no sea un número
\b	retroceso (0x08), si está dentro de un rango
\b	límite de palabra, si NO está dentro de un rango
\B	no límite de palabra
*	cero o más repeticiones de lo que le precede
+	una o más repeticiones de lo que le precede
$	fin de la línea
{m,n}	como menos m, y como mucho n repeticiones de lo que le precede
?	al menos una repetición de lo que le precede; lo mismo que {0,1}
()	agrupar expresiones
pipeline*	operador lógico O, busca lo de antes o lo después
un pipeline es el carácter " | "

Conceptos extraídos de :
http://rubytutorial.wikidot.com/expresion
https://carlossanchezperez.wordpress.com/2013/06/30/expresiones-regulares-en-ruby-no-te-dejes-intimidar-primera-parte/

RegexOne | Learn Regular Expressions with simple, interactive exercises.
https://regexone.com/

Cómo utilizar expresiones regulares en Ruby?
Una expresión regular viene a ser un patrón, que se ajusta a un string para que coincida o no, son una poderosa herramienta para trabajar con texto.

Las expresiones regulares son todo un tema así que si quieres profundizar es estas ve aquí . Igual podemos declarar algunas así:

is_gmail_regex = /\w+@gmail.com/

#Vamos a hacer un match con nuestro regex
"simon@gmail.com".match is_gmail_regex # #<MatchData "simon@gmail.com">

#Si el string que le pasamos no hace match nos da nil
"simon@gmail".match is_gmail_regex # nil
\w → letra o número; es lo mismo que [0-9A-Za-z]
\d → número; lo mismo que [0-9]

number_regex = /\d+/