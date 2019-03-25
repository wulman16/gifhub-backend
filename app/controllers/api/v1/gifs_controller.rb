class Api::V1::GifsController < ApplicationController
  def index
    @gifs = Gif.all
    render json: @gifs
  end
end
