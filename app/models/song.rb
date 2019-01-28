class Song < ApplicationRecord
  enum HarpType: { Diatonic: "0", Chromatic: "1", Tremelo: "2", TunedOctabe: "3"}
  def self.search_songs(song_name)
    return Song.where('SongName like ?', "%#{song_name}%")
  end
end
