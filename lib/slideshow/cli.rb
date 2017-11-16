module Slideshow
  class CLI
    def start(slideshow)
      unless slideshow
        $stderr.puts usage_message
        exit
      end

      slideshow_file = File.read(slideshow)

      Slideshow::Server.set(:slideshow_file, slideshow_file)
      Slideshow::Server.run!
    end

    private
    def usage_message
      <<~TEXT
      Run using `slideshow [slideshow_name]`. Slideshow_name must match the
      filename of the slideshow. Currently only supports a single markdown (.md) file.
      TEXT
    end
  end	
end
