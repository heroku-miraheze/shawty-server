# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "shawty-server"
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jack Danger Canty"]
  s.date = "2012-07-11"
  s.description = "Run your own url shortener add your own web address for free on Heroku.com"
  s.email = "gitcommit@6brand.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    ".gems",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "config.ru",
    "config/database.yml",
    "lib/shawty.rb",
    "lib/shawty/helpers.rb",
    "shawty-server.gemspec",
    "test.rb"
  ]
  s.homepage = "http://github.com/JackDanger/shawty-server"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Ultra-lightweight url shortening server for Heroku.com"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sinatra>, ["= 1.0.0"])
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
      s.add_runtime_dependency(%q<alphadecimal>, [">= 0"])
      s.add_runtime_dependency(%q<pg>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, ["= 2.11.0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_runtime_dependency(%q<alphadecimal>, [">= 1.0.1"])
      s.add_development_dependency(%q<active_record>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<sinatra>, ["= 1.0.0"])
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<activesupport>, [">= 0"])
      s.add_dependency(%q<alphadecimal>, [">= 0"])
      s.add_dependency(%q<pg>, [">= 0"])
      s.add_dependency(%q<rack-test>, [">= 0"])
      s.add_dependency(%q<shoulda>, ["= 2.11.0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<alphadecimal>, [">= 1.0.1"])
      s.add_dependency(%q<active_record>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<sinatra>, ["= 1.0.0"])
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<activesupport>, [">= 0"])
    s.add_dependency(%q<alphadecimal>, [">= 0"])
    s.add_dependency(%q<pg>, [">= 0"])
    s.add_dependency(%q<rack-test>, [">= 0"])
    s.add_dependency(%q<shoulda>, ["= 2.11.0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<alphadecimal>, [">= 1.0.1"])
    s.add_dependency(%q<active_record>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

