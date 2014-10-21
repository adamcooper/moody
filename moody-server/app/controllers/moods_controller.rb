class MoodsController < ApplicationController
  skip_before_action :verify_authenticity_token

  rescue_from(ActionController::ParameterMissing) do |parameter_missing_exception|
    error = {}
    error[parameter_missing_exception.param] = ['parameter is required']
    response = { errors: [error] }
    respond_to do |format|
      format.json { render json: response, status: :unprocessable_entity }
    end
  end

  def index
    @moods = Mood.all
    render json: @moods
  end

  def create
    @mood = Mood.new(mood_params)
    if @mood.save
      render json: @mood
    else
      render json: {errors: @mood.errors} 
    end
  end

  private

  def mood_params
    params.require(:mood).permit(:mood_id, :emotion_id)
  end

end

