#Ciclos https://makeitrealcamp.gitbook.io/ruby-book/ciclos



#básica
# while condicion do
#     puts "Hola"
# end

#Ejemplo de la clase
# x = 1

# while x < 5 do
#     puts "Hola #{x}"
#     x +=1
# end


# i = 0
# while i < 5
#   puts "Hola mundo"
#   i = i + 1
# end


# loop do
#     puts "Hola #{x}"
#     break if x >= 5
#     x +=1
# end


# for i in 1..5 do
#     puts "Hola #{i}"
# end



Ciclos en Ruby
# Crear iteraciones o repeticiones en Ruby es muy parecido a como se hace en otros programas, en el siguiente código vamos a declarar un ciclo de while

#básica
while condicion do
    puts "Hola"
end

#Ejemplo de la clase
x = 1

while x < 5 do
    puts "Hola #{x}"
    x +=1
end
# Para que el resultado sea menor y igual a 5 tenemos que poner <=

while x <= 5 do
    puts "Hola #{x}"
    x +=1
end
# Cuando declaramos un loop se convertirá en un ciclo infinito, así que nosotros explícitamente tenemos que decirle cuando queremos que termine

loop do
    puts "Hola #{x}"
    break if x >= 5
    x +=1
end
# Y para declarar una for, lo haremos de la siguiente manera

for i in 1..5 do
    puts "Hola #{i}"
end
# También podemos hacer una iteración es creando un Array y pasandole el método .each

[1,2,3,4,5].each { |x| puts "Hola #{x}" }
# Y por último podemos crear un ciclo con el método .times, aunque este comienza en 0  

5.times { |x| puts "Hola #{x}" }