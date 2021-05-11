class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def create
    song = Song.new(
      title: params[:title],
      album: params[:album],
      artist: params[:artist],
      year: params[:year]
    )
    song.save
    render json: song.as_json
  end

  def show
    song_id = params[:id]
    song = Song.find_by(id: song_id)
    render json: song.as_json
  end

  def update
    song_id = params[:id]
    song = Song.find_by(id: song_id)
    song.title = params[:title || song.title]

    # LEFT OFF HERE - ADDING UPDATE ACTIONS!!

  end
end
