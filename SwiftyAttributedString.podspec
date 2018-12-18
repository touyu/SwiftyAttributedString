Pod::Spec.new do |s|
  s.name         = "SwiftyAttributedString"
  s.version      = "1.0.1"
  s.summary      = "The library that makes AttributedString easy to use"
  s.description  = "
                    - Comfortable NSAttributedString
                    - Better autocompletion
                    - Easy range specification
                    - Chainable methods
                   "
  s.homepage     = "https://github.com/touyu/SwiftyAttributedString"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "touyu" => "dev.akkey0222@gmail.com" }
  s.source       = { :git => "https://github.com/touyu/SwiftyAttributedString.git", :tag => "#{s.version}" }
  s.platform     = :ios, '8.0'
  s.source_files = "SwiftyAttributedString/**/*.swift"
end
