Pod::Spec.new do |s|
  s.name             = 'CollectionPageboy'
  s.version          = '1.0'
  s.summary          = 'CollectionPageboy is a collection view controller which support to customize your xib''s cell, and support scrolling vertical or horizontal'
 
  s.homepage         = 'https://github.com/janlionly/CollectionPageboy'
  s.author           = { 'janlionly' => 'janlionly@gmail.com' }
  s.source           = { :git => 'https://github.com/janlionly/CollectionPageboy.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.requires_arc          = true

  s.vendored_frameworks = '*.framework'
  s.framework           = 'UIKit'

  s.license             = { :type => 'MIT', :file => 'LICENSE' }
  s.swift_versions      = ['4.2', '5.0', '5.1']
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.2' }
  
end