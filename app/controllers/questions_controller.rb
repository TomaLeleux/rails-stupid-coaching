class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.include? "?"
      return "Silly question, get dressed and go to work!"
    elsif ["I am going to work right now!", ""].include? your_message
      return ""
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if ["I AM GOING TO WORK RIGHT NOW!", ""].include? your_message
      return ""
    else
      answer = coach_answer(your_message)
      return "I can feel your motivation! " + answer
    end
  end
end
