# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Handler.create  title:      "Ruby",
                parse_cmd:  "foy-ruby-handler parse",
                version_cmd:"foy-ruby-handler version",
                file:       "Gemfile.lock"

Handler.create  title:      "Python",
                parse_cmd:  "foy.python -R",
                version_cmd:"foy.python -C",
                file:       "requirements.txt"
