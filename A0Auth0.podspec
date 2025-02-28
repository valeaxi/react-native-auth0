require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = 'A0Auth0'
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = package['repository']['baseUrl']
  s.license      = package['license']
  s.authors      = package['author']
  s.platforms    = { :ios => '9.0' }
  s.source       = { :git => 'https://github.com/auth0/react-native-auth0.git', :tag => "v#{s.version}" }

  s.source_files = ['ios/A0Auth0.h', 'ios/A0Auth0.m']
  s.requires_arc = true

  s.dependency 'React-Core'
end
