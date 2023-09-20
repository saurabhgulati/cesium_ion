$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "cesium_ion/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cesium_ion"
  s.version     = CesiumIon::VERSION
  s.authors     = ["Ampleyen"]
  s.email       = ["info@ampleyen.com"]
  s.homepage    = ""
  s.summary     = "Cesium Ion gem is build for generating 3d-tile files."
  s.description = "This gem uses cesium ion create asset API and export tileset files"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
  s.add_dependency 'aws-sdk-s3', '~> 1'


  s.add_development_dependency "pg"
end
