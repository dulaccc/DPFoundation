Pod::Spec.new do |s|
  s.name     = 'DPFoundation'
  s.version  = '1.0.0'
  s.license  = 'MIT'
  s.summary  = 'A minimal set of additions and tools to any iOS app.'
  s.homepage = 'https://github.com/dulaccc/DPFoundation'
  s.authors  = { 'Pierre Dulac' => 'pierre@dulaccc.me' }
  s.source   = { :git => 'https://github.com/dulaccc/DPFoundation.git', :tag => '1.0.0' }
  s.source_files = 'DPFoundation/**/*.{h,m}'
  s.requires_arc = true

  s.platform = :ios, '5.0'
end