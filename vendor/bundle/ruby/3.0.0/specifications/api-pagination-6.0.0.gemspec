# -*- encoding: utf-8 -*-
# stub: api-pagination 6.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "api-pagination".freeze
  s.version = "6.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Celis".freeze]
  s.date = "2024-07-29"
  s.description = "Link header pagination for Rails and Grape APIs".freeze
  s.email = ["me@davidcel.is".freeze]
  s.homepage = "https://github.com/davidcelis/api-pagination".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new("> 2.7".freeze)
  s.rubygems_version = "3.3.5".freeze
  s.summary = "Link header pagination for Rails and Grape APIs. Don't use the request body.".freeze

  s.installed_by_version = "3.3.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<kaminari>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_development_dependency(%q<pagy>.freeze, ["~> 9.0"])
    s.add_development_dependency(%q<will_paginate>.freeze, ["~> 3.3", ">= 3.3.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_development_dependency(%q<grape>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<railties>.freeze, ["~> 6.1", ">= 6.1.4.1"])
    s.add_development_dependency(%q<actionpack>.freeze, ["~> 6.1", ">= 6.1.4.1"])
    s.add_development_dependency(%q<sequel>.freeze, ["~> 5.49"])
    s.add_development_dependency(%q<activerecord-nulldb-adapter>.freeze, ["~> 0.7.0"])
  else
    s.add_dependency(%q<kaminari>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_dependency(%q<pagy>.freeze, ["~> 9.0"])
    s.add_dependency(%q<will_paginate>.freeze, ["~> 3.3", ">= 3.3.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_dependency(%q<grape>.freeze, ["~> 1.6"])
    s.add_dependency(%q<railties>.freeze, ["~> 6.1", ">= 6.1.4.1"])
    s.add_dependency(%q<actionpack>.freeze, ["~> 6.1", ">= 6.1.4.1"])
    s.add_dependency(%q<sequel>.freeze, ["~> 5.49"])
    s.add_dependency(%q<activerecord-nulldb-adapter>.freeze, ["~> 0.7.0"])
  end
end
