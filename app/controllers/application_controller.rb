class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  @client = Twitter::REST::Client.new do |config|
    config.consumer_key        = "fkFZUCjJ77QxOr1JVpti5OHwu"
    config.consumer_secret     = "IW6WzQU8iWwAHNgVq0pNJY56zIvWSpgjYpoJQhdcPsHbqeCjqr"
    config.access_token        = "28348819-U1lte4m7QsQuqTfVxASAgXnAUi5g9dwopfryFdGS0"
    config.access_token_secret = "39ArvRB0GGUhltqHc5cZINXsVDehJJKEDw3MTEmsKNscy"

  end

  def hello
    render text: "hello, world!"
  end

  def @client.get_all_tweets(user)
    options = {:count => 3, :include_rts => true}
    user_timeline(user, options)
  end


   @tweet_news = @client.get_all_tweets("tezzataz")

end
