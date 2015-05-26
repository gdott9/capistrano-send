begin
  require 'mail'
rescue LoadError
end

module Capistrano
  module Send
    module Mail
      def self.supported?
        defined?(::Mail)
      end
    end
  end
end

load File.expand_path('../../tasks/mail.cap', __FILE__)
