require 'rubygems'
require 'bundler/setup'
require 'giphy'


module GiphySearch
  
  class PicSearch
    attr_accessor :result

    def initialize(result)
      @result = result
    end

    def search_giphy!
      client = Giphy::Configuration.configure do |config|
      # config.version = ""
      config.api_key = "dc6zaTOxFJmzC"
      end
    
      puts @gif_id = client.translate(@result)
    end
  end
end
