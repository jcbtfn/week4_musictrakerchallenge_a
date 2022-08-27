{{PROBLEM}} Class Design Recipe

1. Describe the Problem
Put or write the user story here. Add any clarifying notes you might have.

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class MusicTrackerb
  def initialize
    initialize an instance variable of list
    # ...
  end

  def add # track is a string
    # Throws an exception if no track is set
    # No return value
  end

  def tracklist_history
    # Throws an exception if there is not a list of tracks
    # Otherwise, returns a string reminding the user to do the task
  end
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
music_session = MusicTrackerb.new

# 2
music_session.addtrack("") => "No track found."

# 3
music_session.tracklist_history => "No playlist saved"

# 3
music_session.addtrack("Forest Swords - Crow") => ["Forest Swords - Crow"]
music_session.@playlist_all[0] == "Forest Swords - Crow"

# 4
music_session.tracklist_history => ["Forest Swords - Crow"]

# 5
music_session.addtrack("Sinner DC - They Never Stay") => ["Sinner DC - They Never Stay"]
music_session.tracklist_history[1]) => "Sinner DC - They Never Stay"

# 6
music_session.tracklist_history => ["Forest Swords - Crow", "Sinner DC - They Never Stay"]

# 7
music_session.addtrack("Benny Benassi - Satisfaction") => ["Benny Benassi - Satisfaction"]
music_session.tracklist_history[2] => "Benny Benassi - Satisfaction"

# 8
music_session.addtrack("Lorn - Anvil") => ["Lorn - Anvil"]
music_session.tracklist_history[3] => "Lorn - Anvil"

# 9
music_session.addtrack("Moby - Porcelain")
music_session.tracklist_history[4] => "Moby - Porcelain"

# 10
music_session.addtrack("Woodkid - Iron")
music_session.tracklist_history[5] => "Woodkid - Iron"

# 11
music_session.tracklist_his"tory => ["Forest Swords - Crow", "Sinner DC - They Never Stay", "Benny Benassi - Satisfaction", "Lorn - Anvil", "Moby - Porcelain", "Woodkid - Iron"]

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.