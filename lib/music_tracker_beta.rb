class MusicTrackerb

    def initialize
        @playlist_all = []
    end

    def addtrack (track)
        fail "No track found." unless (track != "")
        return @playlist_all << track
    end

    def tracklist_history
        fail "No playlist saved." unless (@playlist_all != [])
        puts " - Tracklist history: "
        @playlist_all.each_index {|i| puts "Track " + (i + 1).to_s + ": " + @playlist_all[i]}
        return @playlist_all
    end

    attr_reader :playlist_all

end

# cosamusical = MusicTrackerb.new
# cosamusical.addtrack("Lluvia - Eddie Santiago")
# cosamusical.tracklist_history