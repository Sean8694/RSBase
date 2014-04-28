Pod::Spec.new do |s|
  s.name     = 'RSBase'
  s.version  = '0.0.2'
  s.license  = 'zlib'
  s.summary  = 'provide basic addition.'
  s.homepage = 'https://github.com/Sean8694/RSBase'
  s.authors  = 'Sean'
  s.source   = { :git => 'https://github.com/Sean8694/RSBase.git', :tag => '0.0.2' }
  s.source_files = 'Base/*.{h,m}'

  s.subspec 'BaseClass' do |ss|
    ss.source_files = 'Base/BaseClass/*.{h,m}'
  end

  s.subspec 'UIAddition' do |ss|
    ss.source_files = 'Base/UIAddition/*.{h,m}'
  end


  s.requires_arc = true
  s.ios.deployment_target = '5.0'
end
