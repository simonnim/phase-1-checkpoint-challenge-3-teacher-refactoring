require_relative 'teacher_human'

class ApprenticeTeacher < Teachers

  def initialize(options={})
    @phase = 3
    @target_raise = 800
    @age = options.fetch(:age, 0)
    @name = options.fetch(:name, "")
  end

  # def teach_stuff
  #   response = ""
  #   response += "Listen, class, this is how everything works. "
  #   response += "*drops crazy knowledge bomb* "
  #   response += "... You're welcome."
  #   response
  # end

  def set_performance_rating(rating)
    response = ""
    if rating > 80
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
