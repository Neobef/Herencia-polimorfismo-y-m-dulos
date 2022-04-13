class Person
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end

    def birthday
        @age += 1
    end

    def introduce
        ". Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Student < Person
    def talk
        puts  "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        puts "Hola profesor" + super
    end
end

class Teacher < Person
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

    def introduce
        puts "Hola alumnos" + super
    end
end

class Parent < Person
    def talk
        puts "Aquí es la reunión de apoderados?"
    end

    def introduce
        puts "Hola. Soy uno de los apoderados" + super
    end
end

student = Student.new("Fabian", "Maldonado", 30)
student.talk
student.introduce

teacher = Teacher.new("Cristian", "Araya", 35)
teacher.talk
teacher.introduce

parent = Parent.new("Fabian", "Maldonado", 30)
parent.talk
parent.introduce


