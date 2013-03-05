class ProjectPackage
  include Mongoid::Document
  field :version, type: String

  belongs_to :project
  belongs_to :package

  def updated?
    Gem::Version.new(version) >= Gem::Version.new(self.package.version) rescue true
  end
end
