load File.expand_path('../../tasks/git.cap', __FILE__)

module Capistrano
  module Send
    module Git
      def log
        context.capture(:git, "--no-pager log --pretty=format:'* %s (%cn)' #{fetch(:previous_revision)}..#{fetch(:current_revision)}")
      end
    end
  end
end

Capistrano::Git.include Capistrano::Send::Git
