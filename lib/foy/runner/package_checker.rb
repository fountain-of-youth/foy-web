require 'foy/git_fetcher'
require 'foy/handler_caller'

module Foy
  module Runner
    class PackageChecker
      class << self
        def run
          Handler.all.each do |handler|
            caller = Foy::HandlerCaller.new(handler)
            handler.packages.all.each do |package|
              response = caller.version(package.title)
              package.version = response
              package.save
            end
          end
        end
      end
    end
  end
end
