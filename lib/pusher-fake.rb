require "em-websocket"
require "hmac-sha2"
require "thin"
require "yajl"

require "pusher-fake/channel"
require "pusher-fake/channel/public"
require "pusher-fake/channel/private"
require "pusher-fake/channel/presence"
require "pusher-fake/configuration"
require "pusher-fake/connection"
require "pusher-fake/server"
require "pusher-fake/server/application"

module PusherFake
  # The current version string.
  VERSION = "0.1.4"

  # Call this method to modify the defaults.
  #
  # @example
  #   PusherFake.configure do |configuration|
  #     configuration.port = 443
  #   end
  #
  # @yield [Configuration] The current configuration.
  def self.configure
    yield(configuration)
  end

  # @return [Configuration] Current configuration.
  def self.configuration
    @@configuration ||= Configuration.new
  end
end
