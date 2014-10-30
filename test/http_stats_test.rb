require 'test_helper'
require 'pry'

class HttpStats < MiniTest::Test
  def setup
    Resque.redis = "localhost:6379/http_stats_test:test"
    Resque.redis.flushdb
  end

  def test_stats
    json_response = Resque::HttpStats.call('production')
    response = JSON.load(json_response[2][0])
    expect = { "resque" => {
      "processed" => 0,
      "failed" => 0,
      "pending" => 0,
      "workers" => 0,
      "working" => 0,
      "queues" => []
    }}
    assert_equal(expect, response)
  end
end

