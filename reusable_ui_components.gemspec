require_relative "lib/reusable_ui_components/version"

Gem::Specification.new do |spec|
  spec.name        = "reusable_ui_components"
  spec.version     = ReusableUiComponents::VERSION
  spec.authors     = ["udakshataw"]
  spec.email       = ["akshata.waghe@udgama.com"]
  spec.homepage    = "https://github.com/udakshataw/reusable_ui_components.git"
  spec.summary     = "Reusable UI Components built in Ruby on Rails"
  spec.description = "Reusable UI Components built in Ruby on Rails"
  spec.license     = "MIT"

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.0"
end
