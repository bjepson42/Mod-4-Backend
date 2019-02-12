class SongsController < ApplicationController
  def index
    render json: Song.all
  end

  def show
    render json: Song.find(params[:id])
  end

  def create
    render json: Song.create(user_params)
  end

  def update
    Song.find(params[:id]).update(song_params)
    render json: Song.find(params[:id])
  end

  def destroy
    render json: Song.find(params[:id]).destroy
  end

  private
  def song_params
    params.require(:user).permit(:name)
  end
end
