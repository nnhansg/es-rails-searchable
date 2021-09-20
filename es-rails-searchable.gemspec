lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'es/rails/searchable/version'

Gem::Specification.new do |spec|
  spec.name = 'es-rails-searchable'
  spec.version = Es::Rails::Searchable::VERSION
  spec.authors = ['Nhan Nguyen']
  spec.email = ['nnhansg@gmail.com']

  spec.summary = %q(Elasticsearch searchable for Rails.)
  spec.description = %q(Elasticsearch searchable for Rails.)
  spec.homepage = 'https://nhansg.com/'
  spec.license = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/nnhansg/es-rails-searchable'
  spec.metadata['changelog_uri'] = 'https://github.com/nnhansg/es-rails-searchable/blob/master/CHANGELOG.md'
  spec.metadata['bug_tracker_uri'] = 'https://github.com/nnhansg/es-rails-searchable/issues'

  spec.required_ruby_version = '>= 2.5.0'
  spec.requirements << 'rails >= 5.1'
  spec.requirements << 'ruby >= 2.5.0'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
