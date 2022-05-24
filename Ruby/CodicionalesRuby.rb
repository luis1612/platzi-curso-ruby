# Condicionales http://rubysur.org/aprende.a.programar/capitulos/condicionales.html

#is_authuser = false

role = :user

if role == :admin 

    puts " Pantalla Admin "

elsif role == :super_admin

    puts " Pantalla Super Admin "

else

    puts " Pantalla Login "

end