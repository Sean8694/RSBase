Pod::Spec.new do |s|
  s.name     = 'RSBase'
  s.version  = '0.0.1'
  s.license  = 'zlib'
  s.summary  = 'provide basic addition.'
  s.homepage = 'https://github.com/Sean8694/RSBase'
  s.authors  = 'Sean'
  s.source   = { :git => 'https://github.com/Sean8694/RSBase.git', :tag => '0.0.1' }
  s.source_files = 'Base'
  s.requires_arc = true
  s.ios.deployment_target = '5.0'
end
