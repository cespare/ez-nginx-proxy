# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ez-nginx-proxy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Caleb Spare"]
  gem.email         = ["cespare@gmail.com"]
  gem.description   = %q{A very simple-to-use nginx wrapper for reverse proxying}
  gem.summary       = %q{A very simple-to-use nginx wrapper for reverse proxying}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.name          = "ez-nginx-proxy"
  gem.require_paths = ["lib"]
  gem.version       = EzNginxProxy::VERSION

  gem.add_dependency "trollop"
  gem.add_dependency "colorize"
  gem.add_dependency "dedent"
end
