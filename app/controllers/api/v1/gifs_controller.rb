class Api::V1::GifsController < ApplicationController
  before_action :find_gif, only: [:show]

  def index
    @gifs = Gif.all
    render json: @gifs.to_json(include: [:reviews]), status: :ok
  end

  def show
    render json: @gif.to_json(include: [:reviews]), status: :ok
  end

  private

  def find_gif
    @gif = Gif.find(params[:id])
  end
end
