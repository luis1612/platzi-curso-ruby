# test.rb#gema para debugging

#clase calculadora

# class Calculator

# defsum(a,b)
#   a+b
# end

# defsubtract(a,b)
#   a-b
# end
# end

# #instancio calculadora
# cal= Calculator.new

# test_sum={
#   [1,2]=>3,
#   [5,5]=>10,
#   [6,8]=>14
# }

# #en el each recibimos la clave y el valor

# #recorro el hash de tes_sum
# #Ejemplo primer ciclo input[0]=1 input[1]=2 , expect_result=3
# #cal.sum(1,2)=3/==3
# test_sum.each do |input, expect_result|
# if !(cal.sum(input[0],input[1])==expect_result)
#   raise "test failed for input #{input}. Expected resul: #{expect_result}"
# else
#   puts "bien hecho campeón"
# end
# end



# Testing
# Es una práctica de programación con la podemos escribir código que va ha probar el código de nuestra aplicación. Así garantizamos que con nuevos cambios de nuestro proyecto no afecten funcionales anteriores.

# Vamos a utilizar la librería de byebug, así que hay que instalarla en nuestro proyecto.

# require "byebug"

class Calculator
    def sum(number_one, number_two)
      number_one + number_two
    end
  
    def substract(number_one, number_two)
      number_one - number_two
    end
  end
  
  my_calc = Calculator.new
  
  test_sum = {
    [1, 2] => 3,
    [3, 5] => 8,
    [2, 2] => 4
  }
  
  test_sum.each do |input, expected_result|
    if my_calc.sum(input[0], input[1]) != expected_result
      raise "Test Failed for input #{input}. Expected result #{expected_result}."
    end
  end    def sum(a,b)
        a + b
    end

    def substract(a,b)
        a - b
    end
end

calc = Calculator.new
tests_sum = {
    [1,2] => 3,
    [5,6] => 11,
    [100,1] => 101
}

tests_sum.each do |input, expect_result|
    byebug
    if !(calc.sum(input[0], input[1]) == expect_result)
        raise "Test failed for input #{input}. Expected result #{expect_result}."
    end
end
# En Ruby cualquier expresión o número que tenga un ’!' nos va retornar que es false, si queremos que retorne true tenemos que poner ’!!'

