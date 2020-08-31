class Dog
    attr_accessor :name, :breed, :birthday

    def initialize(attributes)
        @name = attributes[:name]
        @breed = attributes[:breed]
        @birthday = attributes[:birthday]
    end

    def speak
        "Woof! My name is #{name}"
    end
end

attributes = { name: 'Newton', breed: 'Miniature Schnauzer', birthday: '08/24/2016' }
# attributes = { 'name' => 'Newton', breed: 'Miniature Schnauzer', birthday: '08/24/2016' } # use attributes['name'] instead
dog = Dog.new(attributes)

puts dog.speak
puts dog.name
puts dog.breed
puts dog.birthday