class SelectedSongsController < ApplicationController
  def index
    render json: SelectedSong.all
  end

  def show
    render json: SelectedSong.find(params[:id])
  end

  def create
    render json: SelectedSong.create(selected_song_params)
  end

  def update
    SelectedSong.find(params[:id]).update(selected_song_params)
    render json: SelectedSong.find(params[:id])
  end

  def destroy
    render json: SelectedSong.find(params[:id]).destroy
  end

  private
  def selected_song_params
    params.require(:user).permit(:name)
  end
end
