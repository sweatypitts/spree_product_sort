Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_sort'
  s.version     = '0.70.0'
  s.summary     = 'Drag and drop product sorting.'
  # s.description = 'Add (optional) gem description here'
  s.required_ruby_version = '>= 1.8.7'
  s.author            = 'Robbie Pitts'
  s.email             = 'me@robertpittsdesign.com'
  s.homepage          = 'http://robertpittsdesign.com'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'
  s.add_dependency('spree_core', '>= 0.70.0')
  s.add_dependency('deface')
end
