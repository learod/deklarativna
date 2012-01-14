# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "deklarativna"
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Litvak"]
  s.date = "2012-01-14"
  s.description = "A Declarative HTML embedded DSL for HTML/XML Templating in Ruby,\n  This gem was intended to be use as teaching material for universitary students."
  s.email = "david.litvakb@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rvmrc",
    "GPL_v2",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "deklarativna.gemspec",
    "examples/beatles_example/beatles_example.rb",
    "examples/beatles_example/george.jpg",
    "examples/beatles_example/john.jpg",
    "examples/beatles_example/paul.jpg",
    "examples/beatles_example/ringo.jpg",
    "examples/class_based_example.rb",
    "examples/content_or_404_example.rb",
    "examples/dinamic_sinatra_example.rb",
    "examples/simple_example.rb",
    "examples/static_sinatra_example.rb",
    "lib/deklarativna.rb",
    "lib/deklarativna_core.rb",
    "lib/deklarativna_utils.rb",
    "run_test.sh",
    "test/helper.rb",
    "test/test_deklarativna.rb",
    "test/test_deklarativna_core.rb"
  ]
  s.homepage = "http://github.com/dlitvakb/deklarativna"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "A Declarative HMTL embedded DSL for HTML/XML Templating in Ruby"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<launchy>, [">= 0"])
      s.add_runtime_dependency(%q<sinatra>, [">= 0"])
      s.add_runtime_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<launchy>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<launchy>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

