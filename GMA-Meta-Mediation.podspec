Pod::Spec.new do |spec|
  spec.name                = "GMA-Meta-Mediation"
  spec.version             = "6.12.0.1"
  spec.author              = 'Freestar'
  spec.license             =  { :type => 'Apache2.0', :text => 'LICENSE' }
  spec.homepage            = 'http://www.freestar.com'
  spec.summary             = 'GAM META adapter'
  spec.platform            = :ios, '12.0'
  spec.swift_version       = '5.0'
  spec.requires_arc        = true

  spec.vendored_frameworks  = 'MetaAdapter-6.12.0.0/MetaAdapter.xcframework'
  spec.dependency 'FBAudienceNetwork', '6.12.0'
  spec.dependency 'Google-Mobile-Ads-SDK', '10.0'

  spec.preserve_paths = 'MetaAdapter-6.12.0.0/README.md'
  spec.source              = {
      :http => "https://dl.google.com/googleadmobadssdk/mediation/ios/meta/MetaAdapter-6.12.0.0.zip"
  }

  spec.pod_target_xcconfig = {
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 x86_64',
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 armv7'
  }

end
