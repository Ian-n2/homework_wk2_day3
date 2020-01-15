class Bear
  attr_accessor :name, :type
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
    @speak = "roar"
  end

  def take_fish(name)
     @stomach.push(name)
  end
  def stomach_count
    @stomach.count
  end

  def roar
    return @speak
  end


end
