require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|

  s.name            = package["name"]
  s.version         = package["version"]
  s.homepage        = "https://github.com/chirag04/react-native-mail"
  s.summary         = package["description"]
  s.license         = package["license"]
  s.author          = { "Chirag Jain" => "jain_chirag04@yahoo.com" }
  s.platform        = :ios, "7.0"
  s.source          = { :git => "https://github.com/chirag04/react-native-mail", :tag => "v#{s.version}" }
  s.default_subspec     = 'Core'
  
  s.dependency 'React'

  s.subspec 'Core' do |ss|
    ss.source_files     = "RNMail/*.{h,m,swift}"
  end

end
