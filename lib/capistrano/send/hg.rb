load File.expand_path('../../tasks/hg.cap', __FILE__)

module Capistrano
  module Send
    module Hg
      def log
        context.capture(:hg, "log --template '{desc} ({author})\n' --rev #{fetch(:previous_revision)}..#{fetch(:current_revision)}")
      end
    end
  end
end

Capistrano::Hg.include Capistrano::Send::Hg
