class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end
end


private

  def coach_answer(question)
    if question == "i am going to work!"
      "great!"
    elsif question.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
