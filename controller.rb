class Controller
  attr_reader :user
  def initialize(name, age)
    @user = User.new(name, age)
  end

  def puls(percent)
    @user.max_puls * percent / 100
  end

end
