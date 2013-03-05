class Package
  include Mongoid::Document
  field :title, type: String
  field :version, type: String

  embedded_in :handler
end
