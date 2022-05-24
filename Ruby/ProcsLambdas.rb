# Datos especiales: Procs y lambdas
# Hey, chicos si no entendieron muy bien lo de los Procs y las lambdas, o quedaron con muchas dudas. Este vídeo lo explica perfectamente

# pequeños apuntes:

# Procs
# Los procs se comportan como bloques. Se recomienda pasar el Proc de forma explícita
def run_proc_w_random_number(proc)
    proc.call(rand(100))
end

proc = Proc.new { |number| puts "#{number}" }
run_proc_w_random_number(proc)

# No tan buen en performace la siguiente, pero no se recomienda
def run_proc_w_random_number(&proc)
    proc.call(rand(100))
end

run_proc_w_random_number { |number| puts "#{number}" }

# Lambdas
# Las lambdas utiliza un return de la misma forma que hace un método
def return_from_proc
    a = Proc.new { return 10 }.call
    puts 'This will never be printed'
end

def return_from_lambda
    # a = lambda { return 10 }.call
    a = -> { return 10 }.call
    puts "The lambda returned #{a}"
end

return_from_proc
return_from_lambda
Ejercicio de la clase
En Ruby un Proc o lambda es una clase especial que hace una referencia a un método. Estos lambdas son utilizados para hacer programación funcional.

# 1. Declarar un proc
saludar = Proc.new { |nombre| puts "Hola #{nombre}" }

# 2. LLamar a ese procedimiento
saludar.call("Carmen")