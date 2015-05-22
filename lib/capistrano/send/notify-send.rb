module Capistrano
  module Send
    module NotifySend
      def self.supported?
        system('notify-send --version >/dev/null 2>&1') != nil
      end
    end
  end
end

load File.expand_path('../../tasks/notify-send.cap', __FILE__)
