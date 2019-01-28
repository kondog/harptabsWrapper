class SearchController < ApplicationController
  def index
  end

  def show
    @songs = Song.search_songs(params[:song_name])
  end
end
