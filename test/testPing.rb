require_relative '../lib/McQuery.rb'
require 'test/unit'

class TestPing < Test::Unit::TestCase
	def test_ping
		retVal = McQuery::Ping.new('0', 25565)
		assert_not_nil retVal.protocol_version
		assert_not_nil retVal.server_version
		assert_not_nil retVal.motd
		assert_not_nil retVal.players_online
		assert_not_nil retVal.players_max
	end
end