class Api::V1::GifsController < ApplicationController
  before_action :find_gif, only: [:show]

  def index
    @gifs = Gif.all
    render json: @gifs
  end

  def show
    render json: @gif
  end

  private

  def find_gif
    @gif = Gif.find(params[:id])
  end
end
