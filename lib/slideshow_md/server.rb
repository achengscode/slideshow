require 'sinatra/base'

module SlideshowMD
  class Server < Sinatra::Base
    get '/' do
      # slideshow_file is the markdown file we'll be presenting
      erb :index, 
        locals: { slideshow_file: settings.slideshow_file, theme: settings.theme }
    end
  end
end
