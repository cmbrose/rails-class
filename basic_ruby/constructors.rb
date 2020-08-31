class Dog
    attr_accessor :name, :breed, :birthday

    def initialize(name:, breed:, birthday:)
        @name = name
        @breed = breed
        @birthday = birthday
    end

    def speak
        "Woof! My name is #{name}"
    end
end

dog = Dog.new(name: 'Newton', breed: 'Miniature Schnauzer', birthday: '08/24/2016')
puts dog.speak
puts dog.name
puts dog.breed
puts dog.birthday