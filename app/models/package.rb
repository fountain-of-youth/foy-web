class Package
  include Mongoid::Document
  field :title, type: String
  field :version, type: String

  has_many :project_packages
  belongs_to :handler
end
