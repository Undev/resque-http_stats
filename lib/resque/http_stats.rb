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
          queues: Resque.queues.inject({}) do |res, q|
            res[q] = Resque.size(q)
            res
          end
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
