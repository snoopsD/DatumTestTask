class AnswersController < ApplicationController
  before_action :question, only: %i[new create]
  before_action :load_answer, only: [:update]

  def create
    @answer = @question.answers.new(answer_params)
    @answer.save
  end

  private

  def question
    @question = Question.find(params[:question_id])
  end

  def load_answer
    @answer = Answer.find(params[:id])
  end

  def answer_params
    params.require(:answer).permit(:body)
  end
end
