class ResultsController < ApplicationController
  def index
  end

  def show
    correct_count = 0
    incorrect_count = 0

    questions.each do |question|
      user_answer = answers[question[:id].to_s]
      if user_answer.to_i == question[:answer]
        correct_count += 1
      else
        incorrect_count += 1
      end
    end

    # カウントした結果をビューに渡す
    @correct_answers = correct_count
    @incorrect_answers = incorrect_count
  end
end
