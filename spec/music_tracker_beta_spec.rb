require "music_tracker_beta"

RSpec.describe MusicTrackerb do

    context "Testing the Class with empty values" do
        music_session = MusicTrackerb.new
        it "#When input is empty it returns an error message" do
            expect{music_session.addtrack("")}.to raise_error ("No track found.")
        end
        it "#When tracklist is empty it returns an error message" do
            expect{music_session.tracklist_history}.to raise_error ("No playlist saved.")
        end
    end
    context "Testing add method" do
        music_session = MusicTrackerb.new
        it "#When calling method add passing a song (string arg) it adds it to a the list - Forest Swords - Crow" do
            music_session.addtrack("Forest Swords - Crow")
            expect(music_session.playlist_all[0]).to eq "Forest Swords - Crow"
        end

        it "#When calling method 'add' passing a song (string arg) it adds it to a the list - Sinner DC - They Never Stay" do
            music_session.addtrack("Sinner DC - They Never Stay")
            expect(music_session.playlist_all[1]).to eq "Sinner DC - They Never Stay"
        end
    end
    context "Testing tracklist_history method" do
        music_session = MusicTrackerb.new
        music_session.addtrack("Forest Swords - Crow")
        it "#When we call function tracklist_history, it returns us the list of songs added previously" do
            expect(music_session.tracklist_history).to eq (["Forest Swords - Crow"])
        end
        it "#When a new track is added the method returns us the list updated" do
            music_session.addtrack("Sinner DC - They Never Stay")
            expect(music_session.tracklist_history).to eq (["Forest Swords - Crow", "Sinner DC - They Never Stay"])
        end
        it "#When adding multilple tracks, the method returns the updated list" do
            ["Benny Benassi - Satisfaction", "Lorn - Anvil","Moby - Porcelain", "Woodkid - Iron"].each do |track|
                music_session.addtrack(track)
            end
            expect(music_session.tracklist_history).to eq (["Forest Swords - Crow", "Sinner DC - They Never Stay", 
                                                            "Benny Benassi - Satisfaction", "Lorn - Anvil", 
                                                            "Moby - Porcelain", "Woodkid - Iron"])
        end
    end
end