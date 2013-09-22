require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/tweetsearch'
require_relative 'lib/giphysearch'


get '/' do 
  erb :index
end

post '/twitter' do 
  @word = params[:word]
  @output_result = TweetSearch::UserWord.new(@word).search!

end

# post '/twitter' do 
#   @output_result
#   erb :twitter_results
# end

# # Require JSON gem. Rewrite erb to output giphy url.
#   search_term = @response

  
#   url = "http://api.giphy.com/v1/gifs/translate?s=#{search_term}&api_key=dc6zaTOxFJmzC&limit=1"
#   resp = Net::HTTP.get_response(URI.parse(url))
  