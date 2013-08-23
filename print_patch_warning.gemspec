# -*- encoding: utf-8 -*-
$: << File.expand_path('lib', File.dirname(__FILE__))

require 'version'

Gem::Specification.new do |s|
  s.name = "print_patch_warning"
  s.version = PrintPatchWarning::Version::STRING

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stabby Cutyou"]
  s.date = Time.new.strftime("%Y-%m-%d")
  s.description = "Raises warnings when a temporary patch of code is supposed to be removed by the time you move to a particular version and path revision of ruby"

  s.files = Dir[*%w(
    print_patch_warning.gemspec
    lib/**/*
    spec/**/*
    README.md
  )]

  s.homepage = "http://github.com/StabbyCutyou/print_patch_warning"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Yells at you when you should have removed a particular patch by now"

  s.add_development_dependency("rspec")
  s.add_development_dependency("bundler")
end

