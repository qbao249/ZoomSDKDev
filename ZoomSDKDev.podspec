Pod::Spec.new do |s|
  s.name         = "ZoomSDKDev"
  s.version      = "5.10.1.3038"
  s.summary      = "Pod for zoom-sdk-ios"
  s.description  = <<-DESC
                  Pod for zoom-sdk-ios.
                   DESC
  s.homepage     = "https://github.com/qbao249/ZoomSDKDev"
  s.author       = { "author" => "zvsx001@gmail.com" }
  s.platform     = :ios, "9.0"

  s.source = { :git => 'https://github.com/qbao249/ZoomSDKDev.git', :tag => "v#{s.version}" }
  # s.source = { :http => 'https://github.com/zoom-us-community/zoom-sdk-pods/releases/download/zoom-releases/zoom-sdk-ios-5.9.6.2769.zip' }
  # s.source = { :http => 'https://github.com/qbao249/ZoomSDKDev/releases/download/v5.10.1.3038/zoom-sdk-ios-5.10.1.3038.zip' }
  s.requires_arc = true
  # s.static_framework = true
  s.vendored_frameworks =  "MobileRTC.xcframework", "MobileRTCScreenShare.xcframework"
  s.resource = 'MobileRTCResources.bundle'

  s.libraries = "sqlite3", "z.1.2.5", "c++"
  s.weak_framework = 'VideoToolbox', 'CoreMedia', 'CoreVideo', 'CoreGraphics', 'ReplayKit'

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386'
  }
#   s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.license      =  { :type => 'MIT', :text => <<-LICENSE
 MIT License
 Copyright (c) 2021 zvs001
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
    LICENSE
  }
end