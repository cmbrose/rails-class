class Animal
    def speak(name)
        "My name is #{name}"
    end
end

class Dog < Animal
    # attr_reader :name # getter only
    attr_accessor :name # getter and setter

    # def name=(name) # setter
    #     @name=name
    # end

    # def name # getter
    #     @name
    # end

    def initialize(name)
        @bark_count = 0
        @name = name
    end

    def speak
        @bark_count += 1
        "Woof! #{super(name)}. I've barked #{@bark_count} times!"
    end

end

dog = Dog.new("Newton")
puts dog.speak
puts dog.speak
puts dog.speak
puts dog.speak