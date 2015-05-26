begin
  require 'libnotify'
rescue LoadError
end

module Capistrano
  module Send
    module Libnotify
      def self.supported?
        defined?(::Libnotify) && ::Libnotify::API.instance_methods.include?(:notify_init)
      end
    end
  end
end

load File.expand_path('../../tasks/libnotify.cap', __FILE__)
