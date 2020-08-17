class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @search = params[:ask]
    @answer = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
    if @search == "I am going to work"
      @answer = @answer[0]
    elsif @search.to_s.include?("?")
      @answer = @answer[1]
    else @answer = @answer[2]
    end
  end

end
