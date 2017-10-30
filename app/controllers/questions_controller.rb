class QuestionsController < ApplicationController
  def answer
    @user_answer = params[:user_input] # get the user data
    @coach_answer = coach_answer_enhanced(@user_answer) # use them in the method
  end

  def ask
  end
end

private

def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.include? "?" # To check if the user is asking a question
    return "Silly question, get dressed and go to work!"
  else # To check if the user saying a classic useless string
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message == your_message.upcase
    return "I can feel your motivation! But " + coach_answer(your_message)
  else
    coach_answer(your_message)
  end
end
