require 'json'
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name             = "RNAwesomeCardIO"
  s.version          = package["version"]
  s.summary          = package["description"]
  s.requires_arc     = true
  s.license          = { :type => package["license"] }
  s.homepage         = package["homepage"]
  s.authors          = { package["author"]["name"] => package["author"]["email"] }
  s.source           = { :git => 'https://github.com/teamairship/card.io-iOS-source.git', :tag => "v0.9.0-rc.2-alpha" }
  s.source_files     = 'ios/*.{h,m}'
  s.platform         = :ios, "8.0"
  s.frameworks       = 'Accelerate', 'AVFoundation', 'AudioToolbox', 'CoreMedia', 'CoreVideo', 'MobileCoreServices', 'OpenGLES', 'QuartzCore', 'Security', 'UIKit'
  s.libraries        = 'c++'
  s.dependency 'React'
  s.dependency 'CardIO'
end
