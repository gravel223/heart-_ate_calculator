class Interface
  def start
    @controller = Controller.new(ask_name_user, ask_age_user)
    hello_user
    enter_max_puls
    zons_of_puls
  end

  def ask_name_user
    puts "Как вас зовут?"
    gets.chomp
  end

  def ask_age_user
    puts "Сколько вам лет?"
    gets.chomp.to_i
  end

  def hello_user
    puts "________Калькулятор пульса_______"
    puts "Привет #{@controller.user.name} "
  end

  def enter_max_puls
    puts "В вашем возрасте максимальный пульс составляет: #{@controller.user.max_puls} ударов в минуту."
  end

  def zons_of_puls
    puts "От #{@controller.puls(90)} до #{@controller.user.max_puls} ударов в минуту зона VO2 (максимальная нагрузка)."
    puts "От #{@controller.puls(80)} до #{@controller.puls(90)} ударов в минуту анаэробная зона (силовая нагрузка)."
    puts "От #{@controller.puls(70)} до #{@controller.puls(80)} ударов в минуту аэробная зона ( бег, велосипед)."
    puts "От #{@controller.puls(60)} до #{@controller.puls(70)} ударов в минуту жиросжигающая зона."
    puts "От #{@controller.puls(60)} до #{@controller.puls(50)} ударов в минуту зона легкой активности."
    puts "Пульс покоя: 70 ударов в минуту."
  end

end
