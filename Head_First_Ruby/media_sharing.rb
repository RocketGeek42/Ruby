module AcceptsComments
    def comments
        @comments = @comments || [] # if@comments is nil, the value of the || expression will the comments method will be an empty array, otherwise the value of the || expression will be the value in @comments
        end
    end

    def add_comment(comment)
        comments << comment # gets an empty list if its never been assign to, or the existing list if it HAS been assigned to
    end
end

class Clip
    def play
        puts "Playing #{object_id}..."
    end
end

class Video < Clip
    include AcceptsComments
    attr_accessor :resolution
end

class Song < Clip
    include AcceptsComments
    attr_accessor :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")
song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments