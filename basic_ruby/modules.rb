require 'date'

class Animal
    def speak(name)
        "My name is #{name}"
    end
end

module Age
    def calculate_age(birthdate)
        current_year = Date.today.year
        current_year - Date.parse(birthdate).year
    end
end

class Dog < Animal
    include Age

    attr_accessor :name, :breed, :birthday

    def initialize(name:, breed:, birthday:)
        @name = name
        @breed = breed
        @birthday = birthday
    end

    def speak
        "Woof! My name is #{super(name)}"
    end

    def age
        "I am #{calculate_age(birthday)}!"
    end
end

dog = Dog.new(name: 'Newton', breed: 'Miniature Schnauzer', birthday: '24/08/2016')
puts dog.age