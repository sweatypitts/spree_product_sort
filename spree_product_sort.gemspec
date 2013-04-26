Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_sort'
  s.version     = '0.60.0'
  s.summary     = 'Add gem summary here'
  s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'
  s.author            = 'Robbie Pitts'
  s.email             = 'me@robertpittsdesign.com'
  s.homepage          = 'http://robertpittsdesign.com'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'
  # s.rubyforge_project = 'actionmailer'

  s.add_dependency('spree_core', '>= 0.60.0')
end
