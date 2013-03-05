class Handler
  include Mongoid::Document
  field :title, type: String
  field :parse_cmd, type: String
  field :version_cmd, type: String
  field :file, type: String

  has_many :packages
end
