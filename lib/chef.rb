class Chef
    attr_reader :meal_count
    def initialize(meal_count=10)
        @meal_count = meal_count
    end
    def make_fries
        puts "Making fries!"
    end
    def make_pasta
        puts "Making pasta!"
    end
    def make_specialdish
        puts "Making special dish!"
    end

end

class AfricanChef < Chef
    def initialize(meal_count=20)
        super(meal_count)
    end
    def make_specialdish
        puts "Making special African dish!"
    end
end

africanchef= AfricanChef.new
puts africanchef.meal_count


chef = Chef.new
puts chef.meal_count

