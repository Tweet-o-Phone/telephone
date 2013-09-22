require 'rubygems'
require 'bundler/setup'
require 'giphy'
require 'pry'
require 'json'
require 'net/http'


require_relative 'tweetsearch'

module GiphySearch  
  # Take the tweet word from tweetsearch module and search Giphy for a gif.
  class PicSearch    
    attr_accessor :result
    
    def initialize(result)
      @result = result
    end
    
    # Use the provided result from the Twitter Search to search Giphy API. This
    # results in an Array.
    #
    # Select index one and call .id on it to return the gif id.
    # 
    # Returns a String.
    def fetch_gif!
      Giphy::Configuration.configure do |config|
        # config.version = ""
        config.api_key = "dc6zaTOxFJmzC" 
      end  
      Giphy.search(@result)[0].id
    end
  end
end


