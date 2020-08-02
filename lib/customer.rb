class Customer
  
  attr_reader :name, :age
  
  @@all = []
  
  def initialize(name,age)
    @name = name
    @age = age
    @@all << self
  end
    
    def self.all
      @@all
    end
    
    def new_meal(waiter, total, tip = 0)
      Meal.new(waiter,self,total,tip)
    end
    
    def meals
      Meal.all.select do |meal|
        meal.Customer == self
      end
    end
    
    def waiters
      Meal.all.collect do |meal|
        meal.waiter if meal.Customer == self
      end
    end
  
end