module Foy
  class HandlerCaller
    
    def initialize(handler)
      @handler = handler
    end

    def parse(file)
      `#{@handler.parse_cmd} #{file}`.strip
    end

    def version(package)
      `#{@handler.version_cmd} #{package}`.strip
    end
  end
end
