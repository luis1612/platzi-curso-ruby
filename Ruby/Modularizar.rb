# Modularizar nuestro código
# Una buena práctica de programación es modularizar nuestro código, también se le dice “Alta cohesión”, esto quiere decir, que las clases o las funcionalidades que hacen similares estén en mismo contenedor.

# Para hacer esto en Ruby utilizamos los módulos.

module Model
    class Company
    end
    class Employee
    end
end

module Reports
    class ExcelReporter
        def build
            puts "Generating excel report"
        end
    end

    class EmailReporter
    end
end

excel_report = Reports::ExcelReporter.new
excel_report.build
# Los módulos son una forma de grupo código, y es considerado una buena práctica.

# Algunas de sus características son:

# no instancian objetos
# no crean clases derivadas
# se pueden utilizar para cualquier clase
# Los módulos de Ruby son similares a las clases porque contienen una colección de métodos, constantes y otras definiciones de módulos y clases.
# Los módulos se definen como las clases, pero la palabra clave de módulo se usa en lugar de la palabra clave de clase.
# Los módulos sirven como herramientas, es el equivalente a un mixin que se puede reutilizar a lo largo de las clases.
# Los módulos son agnósticos, los podemos utilizar en cualquier tipo de clase.
# Conceptos extraídos :

# https://platzi.com/clases/1397-ruby-poo/15090-modulos-librerias-caja-de-herramientas/
# https://code.i-harness.com/es/q/4dac0
# https://prograils.com/posts/ruby-methods-differences-load-require-include-extend