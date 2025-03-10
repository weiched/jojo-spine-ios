#
# Be sure to run `pod lib lint jojo-spine-ios.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'jojo-spine-ios'
  s.version          = '4.2.0-jojo-0.0.1'
  s.summary          = 'Spine runtimes for iOS.'
  s.description      = <<-DESC
Spine runtimes for iOS.
                       DESC
  s.homepage         = 'https://esotericsoftware.com'
  s.author           = { "Esoteric Software LLC  " => "https://esotericsoftware.com" }
  s.license          = { :file => 'LICENSE' }

  s.source           = { :git => 'https://github.com/weiched/jojo-spine-ios.git', :tag => s.version.to_s }
  s.source_files     = 'jojo-spine-ios/Sources/Spine/**/*.{swift}'
#  s.platform         = :ios, '10.0'
  
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SpineCppLite/spine-cpp/spine-cpp/include" "$(PODS_ROOT)/SpineCppLite/spine-cpp/spine-cpp-lite"'
  }

  s.resource_bundles = {
    'SpineBundle' => ['jojo-spine-ios/Sources/Spine/**/*.{metal}']
  }

  s.swift_version = '5.0'
#  s.dependency 'SpineCppLite'
#  s.dependency 'SpineShadersStructs'
  
end
