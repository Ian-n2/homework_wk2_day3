class River
  attr_accessor :name
  def initialize (name)
    @name = name
    @fishes = []
  end

  def add_fish(name)
    total = 0
    @fishes.push(name)
    # total = 0
    # counter = 0
    # while (counter < num)
    #   # put a fish in the River
    #   new_fish = Fish.new()
    #   @fishes.push(new_fish)
    #   counter += 1
  end
  def fish_count
    @fishes.count
  end

  def remove_fish(name)
    total = @fishes
    @fishes.delete(name)
  end
end
