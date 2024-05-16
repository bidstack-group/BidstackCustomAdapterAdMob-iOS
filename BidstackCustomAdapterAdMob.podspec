Pod::Spec.new do |spec|

  spec.name         = "BidstackCustomAdapterAdMob"
  spec.version      = "2.4.0"
  spec.summary      = "Bidstack Custom Adapter for AdMob v11.1.0+"

  spec.description  = <<-DESC
			  The Bidstack AdMob Adapter for iOS allows you to display Interstitial and Rewarded ads in your app through AdMob.
		      DESC

  spec.homepage     = "https://bidstack.com"

  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.preserve_path = "README.md"

  spec.author       = "Bidstack Limited"
  spec.platform     = :ios, "12.0"
  spec.swift_version = '5.0'

  spec.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphoneos*]' => 'arm64', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
                                   							                                   
  spec.source       = { :git => "https://github.com/bidstack-group/BidstackCustomAdapterAdMob-iOS.git", :tag => "v#{spec.version}" }
  
  spec.vendored_frameworks = "BidstackCustomAdapterAdMob.xcframework"
  
  spec.dependency 'Google-Mobile-Ads-SDK'
  spec.dependency 'BidstackMobileAdsSDK', '~> 2.4.0'
 	
end
