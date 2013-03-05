class Project
  include Mongoid::Document
  field :title, type: String
  field :repository, type: String

  embeds_many :project_packages
  belongs_to :handler
end
