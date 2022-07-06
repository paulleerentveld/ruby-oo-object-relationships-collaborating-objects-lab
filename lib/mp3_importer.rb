class MP3Importer
    attr_accessor :path

    def initialize(filename)
        @path = filename
    end

    def files
        Dir.chdir(@path) do |file|
            Dir.glob("*.mp3")
        end

    end

    def import()
        files.each do |file|
            Song.new_by_filename(file)
        end

    end

end