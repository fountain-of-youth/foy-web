class Project
  include Mongoid::Document
  field :title, type: String
  field :repository, type: String

  has_many :project_packages
  belongs_to :handler


  def updated?
    self.project_packages.all? do |package|
      package.updated?
    end
  end

  def outdated_packages
    self.project_packages.select do |package|
      not package.updated?
    end
  end

end
