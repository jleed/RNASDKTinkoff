
require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = package['name']
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => package['repository']['url'], :tag => "#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"

  s.dependency 'React'
  s.dependency 'CardIO'
  s.dependency 'ASDKCore', :podspec =>  "https://raw.githubusercontent.com/TinkoffCreditSystems/tinkoff-asdk-ios/master/ASDKCore.podspec"
  s.dependency 'ASDKUI', :podspec =>  "https://raw.githubusercontent.com/TinkoffCreditSystems/tinkoff-asdk-ios/master/ASDKUI.podspec"

end

  