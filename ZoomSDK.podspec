#
#  Be sure to run `pod spec lint ZoomSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "ZoomSDK"
  spec.version      = "5.10.1.3038"
  spec.summary      = "Original framework for Zoom.us iOS SDK for ARM. Not for simulator"
  spec.homepage     = "https://github.com/zoom/zoom-sdk-ios"
  spec.license      = "MIT"
  spec.author       = { "Auth" => "auth@gmail.com" }
  spec.platform     = :ios, '9.0'

  spec.swift_version              = "5.0"
  spec.ios.deployment_target      = "10.0"

  spec.source       = { :git => "https://github.com/qbao249/ZoomSDKDev.git", :tag => "v#{spec.version}" }

  # spec.libraries = "z", "c++", "sqlite3"
  # spec.frameworks = "Foundation", "UIKit", "VideoToolbox", "CoreBluetooth", "ReplayKit", "CoreMotion"

  spec.requires_arc = true

  # spec.vendored_frameworks =  "sdk/lib/MobileRTC.xcframework", "sdk/lib/MobileRTCScreenShare.xcframework"
  # spec.resource = '**/sdk/lib/MobileRTCResources.bundle'

  spec.libraries = "sqlite3", "z.1.2.5", "c++"
  spec.weak_framework = 'VideoToolbox', 'CoreMedia', 'CoreVideo', 'CoreGraphics', 'ReplayKit'

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  spec.default_subspec = 'Core'

  spec.subspec 'Core' do |subspec|
    # subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
    # subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
    subspec.ios.vendored_frameworks    = "sdk/lib/MobileRTC.xcframework", "sdk/lib/MobileRTCScreenShare.xcframework"
    subspec.ios.resource = "sdk/lib/MobileRTCResources.bundle"
  end

  # spec.subspec 'Core' do |subspec|
  #   subspec.ios.source_files           = "MobileRTC.framework/Headers/**/*.{h,m}"
  #   subspec.ios.public_header_files    = "MobileRTC.framework/Headers/**/*.{h,m}"
  #   subspec.ios.vendored_frameworks    = "MobileRTC.framework"
  #   subspec.ios.resource = "MobileRTCResources.bundle"
  # end

  # Uncomment when this library will be support Swift 5 or higher
  # spec.subspec 'ShareScreen' do |subspec|
  #   subspec.ios.dependency 'Core'

  #   subspec.ios.source_files            = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.public_header_files     = "MobileRTCScreenShare.framework/Headers/**/*.{h,m}"
  #   subspec.ios.vendored_frameworks     = "MobileRTCScreenShare.framework"
  # end

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end