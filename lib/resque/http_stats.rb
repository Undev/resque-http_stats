require "resque/http_stats/version"
require 'json'

module Resque
  module HttpStats
    def self.call(env)
      info = Resque.info
      stats = { resque: {
          processed:  info[:processed],
          failed:     info[:failed],
          pending:   info[:pending],
          workers: info[:workers],
          working: info[:working],
          queues: Resque.queues.map { |q| Resque.size(q) }
      }}

      [
        200,
        {
          'Content-Type'=> 'application/json'
        },
        [JSON.generate(stats)]
      ]
    end
  end
end
