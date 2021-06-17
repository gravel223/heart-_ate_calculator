class User
  attr_reader :name, :age, :max_puls
  def initialize(name, age)
    @name = name
    @age = age
    @max_puls = max_puls
  end

  def max_puls
    220 - age
  end
end
