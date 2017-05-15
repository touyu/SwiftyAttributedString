#
#  Be sure to run `pod spec lint SwiftyAttributedString.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "SwiftyAttributedString"
  s.version      = "0.5.1"
  s.summary      = "The library that makes AttributedString easy to use"
  s.description  = <<-DESC
                    - Better autocompletion.
                    - Easy range specification.
                    - Chainable methods.
                   DESC
  s.homepage     = "https://github.com/touyu/SwiftyAttributedString"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Yuto Akiba" => "akkey0222@gmail.com" }
  s.source       = { :git => "https://github.com/touyu/SwiftyAttributedString.git", :tag => "#{s.version}" }
  s.platform     = :ios, '8.0'
  s.source_files = "SwiftyAttributedString/**/*.swift"
  s.requires_arc = true
end
