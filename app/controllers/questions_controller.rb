class QuestionsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show] 
  before_action :load_question, only: [:update]  

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = current_user.questions.new(question_params)

    if @question.save
      redirect_to questions_path
    else
      render :new
    end
  end

  def update
    if @question.update(question_params)
      redirect_to @question
    else
      render :edit
    end
  end

  private

  def load_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:title, :body)
  end

end
