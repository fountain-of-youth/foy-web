class ProjectPackage
  include Mongoid::Document
  field :version, type: String

  embedded_in :project
  belongs_to :package
end
