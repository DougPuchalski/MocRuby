# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Paul Engel"]
  gem.email         = ["paul.engel@holder.nl"]
  gem.summary       = %q{Mock Ruby standard library with sources written in pure Ruby (extracted from MacRuby) for usage in RubyMotion applications}
  gem.description   = %q{Mock Ruby standard library with sources written in pure Ruby (extracted from MacRuby) for usage in RubyMotion applications}
  gem.homepage      = "https://github.com/archan937/moc_ruby"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "moc_ruby"
  gem.require_paths = ["lib"]
  gem.version       = "0.1.0"
end