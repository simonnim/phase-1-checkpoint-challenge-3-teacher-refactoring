require_relative 'dbc_human'

class Teachers < Human
  attr_reader :target_raise, :salary

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end


  def teach_stuff
    response = ""
  if self.class == ApprenticeTeacher
    response += "Listen, class, this is how everything works. "
  else self.class == Teacher
    response += "Listen, class, this is how everything works, fo SHO! "
  end
  if self.class == ApprenticeTeacher
    response += "*drops crazy knowledge bomb* "
  else self.class == Teacher
    response += "*drops flat-out insane knowledge bomb* "
  end
  if self.class == ApprenticeTeacher
    response += "... You're welcome."
  else self.class == Teacher
    response += "... You're welcome. *saunters away*"
  end
    response
  end



end
