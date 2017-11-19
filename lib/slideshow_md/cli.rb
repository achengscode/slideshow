require 'thor'

module SlideshowMD
  class CLI < Thor
    desc "start SLIDESHOW_PATH", "starts the slideshow from the specified markdown file"
    method_option :theme, aliases: "-d", desc: "Optional theme for slideshow"
    def start(slideshow_path)
      slideshow_file = File.read(slideshow_path)
      slideshow_theme = options[:theme] || "default"

      SlideshowMD::Server.set(:slideshow_file, slideshow_file)
      SlideshowMD::Server.set(:theme, slideshow_theme)
      SlideshowMD::Server.run!
    end
  end	
end
