json.extract! song, :id, :HarpType, :SongName, :WhoseSong, :Genre, :PostedBy, :Views, :created_at, :updated_at
json.url song_url(song, format: :json)