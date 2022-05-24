#rangosRuby
# Dato espcecial ‘Rango’
# Los rangos son un tipo de dato especial de Ruby, estos se declaran utilizando paréntesis y dos números separados por dos puntos. Estos nos sirven para hacer iteraciones y también para generar Arrays

(1..6)

# Para generar Arrays
(1..6).to_a
# También podemos declarar rangos, y es con 3 puntos. La diferencia de estos es que el de 2 puntos tiene un rango inclusivo y con 3 puntos es un rango exclusivo (o sea, que excluyen el límite derecho)

# 2 puntos
(1..6).to_a # [1, 2, 3, 4, 5, 6]

# 3 puntos
(1...6).to_a # [1, 2, 3, 4, 5]
# Los rangos tienen métodos parecidos a los Arrays