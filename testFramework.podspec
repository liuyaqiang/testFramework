
Pod::Spec.new do |s|
s.name             = "testFramework"
s.version          = "1.0"
s.summary          = "testFramework"

s.description      = <<-DESC
testFramework for ads
DESC

s.homepage         = "https://github.com/liuyaqiang/testFramework.git"
s.license          = { :type => "MIT", :file => "LICENSE" }
s.author           = { "liuyaqiang" => "344257448@qq.com" }


s.platform         = :ios, '9.0'

s.source           = { :git => "https://github.com/liuyaqiang/testFramework.git", :tag => "#{s.version}" }

s.vendored_frameworks = 'testFramework/test1Framework.framework'

s.source_files     = 'testFramework/test1Framework.framework/Headers/*.{h}'

s.public_header_files = 'testFramework/test1Framework.framework/Headers/**/*.{h}'

s.xcconfig         = { 'OTHER_LDFLAGS' => '-ObjC -lxml2'}

s.frameworks       = 'UIKit', 'AVFoundation', 'Foundation', 'CoreMedia', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'StoreKit', 'MediaPlayer', 'CFNetwork', 'AdSupport', 'ImageIO', 'VideoToolbox', 'CoreMotion', 'WebKit'

s.libraries        = 'z', 'stdc++', 'sqlite3'
s.dependency 'ZYCoreKit'
end
