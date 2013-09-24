# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform  = Gem::Platform::RUBY
  s.name      = 'spree_comments'
  s.version   = '2.0.0'
  s.summary   = 'Comments for orders and shipments'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Rails Dog'
  s.email     = 'gems@railsdog.com'
  s.homepage  = 'https://github.com/spree/spree_comments'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path  = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_api'
  s.add_dependency 'spree_backend'
  s.add_dependency 'spree_core', '>= 2.0.1'
  s.add_dependency 'acts_as_commentable', '4.0.1'
  s.add_development_dependency 'rspec-rails'

end
