class CorrectionsController < ApplicationController
  before_action :answer, only: %i[new create]
  before_action :load_correction, only: [:update]

  def create
    @correction= @answer.corrections.new(correction_params)
    @correction.save
  end

  def update
    @correction.update(correction_params)
    @answer = @correction.answer
  end

  private

  def answer
    @answer = Answer.find(params[:answer_id])
  end

  def load_correction
    @correction = Correction.find(params[:id])
  end

  def correction_params
    params.require(:correction).permit(:body)
  end
end
