class Animal
    def speak(name)
        "My name is #{name}"
    end
end

class Dog < Animal
    attr_accessor :name

    def initialize(name)
        @bark_count = 0
        @name = name
    end

    def speak
        @bark_count += 1
        "Woof! #{super(name)}. I've barked #{@bark_count} times!"
    end

    def self.names(dog_house)
        dog_house.map(&:name)

        # dog_house.map { |dog| dog.name }

        # dog_house.map do |dog|
        #     dog.name
        # end

        # arr = []
        # dog_house.each { |dog| arr.append(dog.name) }
        # dog_house.each { |dog| arr << dog.name }
        # arr
    end

    def self.get_boggy(dog_house)
        dog_house.filter { |dog| dog.name == 'Boggy' }.first
    end
end

dog_house = [Dog.new('Newton'), Dog.new('Dexter'), Dog.new('Boggy')]

Dog.names(dog_house).each { |name| puts name }

puts Dog.get_boggy(dog_house).name