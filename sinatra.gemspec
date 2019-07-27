version = File.read(File.expand_path("../VERSION", __FILE__)).strip

Gem::Specification.new 'sinatra', version do |s|
  s.description       = "Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort."
  s.summary           = "Classy web-development dressed in a DSL"
  s.authors           = ["Blake Mizerany", "Ryan Tomayko", "Simon Rozet", "Konstantin Haase"]
  s.email             = "sinatrarb@googlegroups.com"
  s.homepage          = "http://sinatrarb.com/"
  s.license           = 'MIT'
  s.files             = Dir['README*.md', 'lib/**/*', 'examples/*'] + [
    ".yardopts",
    "AUTHORS.md",
    "CHANGELOG.md",
    "CONTRIBUTING.md",
    "Gemfile",
    "LICENSE",
    "MAINTENANCE.md",
    "Rakefile",
    "SECURITY.md",
    "sinatra.gemspec",
    "VERSION"]
  s.test_files        = s.files.select { |p| p =~ /^test\/.*_test.rb/ }
  s.extra_rdoc_files  = s.files.select { |p| p =~ /^README/ } << 'LICENSE'
  s.rdoc_options      = %w[--line-numbers --inline-source --title Sinatra --main README.rdoc --encoding=UTF-8]

  s.add_dependency 'rack', '~> 1.6'
  s.add_dependency 'tilt', '>= 1.3', '< 3'
  s.add_dependency 'rack-protection', '~> 1.4'
end
