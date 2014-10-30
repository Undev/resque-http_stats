## Installation

Add this line to your application's Gemfile:

    gem 'resque-http_stats'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resque-http_stats

## Usage

add to routes.rb

    match '/resque_stats', to: Resque::HttpStats, via: :all
