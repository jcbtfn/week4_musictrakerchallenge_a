require "music_tracker_beta"

RSpec.describe "Music Tracker Beta class and methods" do
    context "We need to create an initialize the object and the class first" do
        music_session = MusicTrackerb.new()

        it "returns an error message when input is empty" do
            expect{music_session.addtrack("")}.to raise_error ("No track found.")
        end

        it "returns an error message when tracklist is empty" do
            expect(music_session.tracklist_history).to eq "No playlist saved."
        end

        it "adds the track to the list when is a string containing text, example: Forest Swords - Crow" do
            music_session.addtrack("Forest Swords - Crow")
            expect(music_session.tracklist_history[0]).to eq "Forest Swords - Crow"
        end

        it "returns the tracklist with the new track" do
            expect(music_session.tracklist_history).to eq (["Forest Swords - Crow"])
        end

        it "adds the track to the list when is a string containing text, example: Sinner DC - They Never Stay" do
            music_session.addtrack("Sinner DC - They Never Stay")
            expect(music_session.tracklist_history[1]).to eq "Sinner DC - They Never Stay"
        end

        it "returns the tracklist with the new track" do
            expect(music_session.tracklist_history).to eq (["Forest Swords - Crow", "Sinner DC - They Never Stay"])
        end

        it "adds some more tracks to the list when is a string containing text, example: Benny Benassi - Satisfaction" do
            music_session.addtrack("Benny Benassi - Satisfaction")
            expect(music_session.tracklist_history[2]).to eq "Benny Benassi - Satisfaction"
        end

        it "adds some more tracks to the list when is a string containing text, example: Lorn - Anvil" do
            music_session.addtrack("Lorn - Anvil")
            expect(music_session.tracklist_history[3]).to eq "Lorn - Anvil"
        end

        it "adds some more tracks to the list when is a string containing text, example: Lorn - Anvil" do
            music_session.addtrack("Moby - Porcelain")
            expect(music_session.tracklist_history[4]).to eq "Moby - Porcelain"
        end

        it "returns the tracklist with the new track" do
            expect(music_session.tracklist_history).to eq (["Forest Swords - Crow", "Sinner DC - They Never Stay", "Benny Benassi - Satisfaction", "Lorn - Anvil", "Moby - Porcelain"])
        end

    end
end