class Animal
    attr_reader :name, :age
    def name=(value)
        if value == ""
            puts "Name can't be blank!"
        else
            @name = value
        end
    end
    def age=(value)
        if value < 0
            raise "An age of #{value} isn't valid!"
        end
            @age = value
        end
    end
    def talk
        puts "#{@name} says bark!"
    end
    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end
    def report_age
        puts "#{@name} is #{@age} years old."
    end

class Dog < Animal
    def to_s
        "#{@name} the dog, age #{age}"
    end
end

class Bird < Animal
    def talk
        puts "#{@name} says Chirp! Chirp!"
    end
end

class Cat < Animal
    def talk
        puts "#{@name} says Meow!"
    end
end

lucy = Dog.new
lucy.name = "Lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy, rex