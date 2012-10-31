$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'escodegen/version'

Gem::Specification.new do |s|
  s.name     = "escodegen"
  s.version  = Escodegen::VERSION
  s.authors  = ["Cameron Dutro", "Yusuke Suzuki"]
  s.email    = ["cdutro@twitter.com", "@Constellation"]
  s.homepage = "https://github.com/Constellation/escodegen"

  s.description = s.summary = "Ruby wrapper around the escodegen JavaScript generator that generates ECMA script from an abstract syntax tree."

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true

  s.add_dependency 'therubyracer', '~> 0.9.10'
  s.add_dependency 'commonjs', '~> 0.2.6'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 2.11.0'
  s.add_development_dependency 'rr',    '~> 1.0.4'

  s.require_path = 'lib'
  s.files = Dir["{lib,spec,vendor}/**/*", "Gemfile", "History.txt", "LICENSE", "NOTICE", "README.md", "Rakefile", "escodegen.gemspec"]
end
