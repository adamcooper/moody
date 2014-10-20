class EmotionsController < ApplicationController

  def index
    @emotions = Emotion.all
    render json: @emotions
  end

end
