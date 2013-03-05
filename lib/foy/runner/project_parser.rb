require 'foy/git_fetcher'
require 'foy/handler_caller'

module Foy
  module Runner
    class ProjectParser
      class << self
        def run
          Project.all.each do |project|
            handler = project.handler
            git_fetcher = Foy::GitFetcher.new(project.repository)
            file = git_fetcher.get(handler.file)
            caller = Foy::HandlerCaller.new(handler)
            response = caller.parse(file)

            project.project_packages.destroy

            response.each_line do |line|
              title, version = line.split(" ")
              package = handler.packages.find_or_create_by(title: title)
              package.save

              project_package = project.project_packages.find_or_create_by(package_id: package.id)
              project_package.version = version
              project_package.save
            end
          end
        end
      end
    end
  end
end
