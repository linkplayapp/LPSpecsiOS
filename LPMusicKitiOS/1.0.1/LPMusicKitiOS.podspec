#
# Be sure to run `pod lib lint LPMusicKitiOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LPMusicKitiOS'
  s.version          = '1.0.1'
  s.summary          = 'iOS Device SDK.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/linkplayapp/LPMusicKitiOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LinkPlay' => 'ios_team@linkplay.com' }
  s.source           = { :git => 'https://github.com/linkplayapp/LPMusicKitiOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.subspec 'CocoaHTTP' do |ss|
   ss.source_files = 'LPMusicKitiOS/Third/CocoaHTTP/**/*' 
  end
  s.subspec 'KissXML' do |ss|
   ss.private_header_files = 'LPMusicKitiOS/Third/KissXML/Private/*.h'
   ss.source_files = 'LPMusicKitiOS/Third/KissXML/**/*' 
   ss.library      = 'xml2'
   ss.xcconfig     = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2'}
  end

  s.static_framework = true 
  s.libraries = 'c++'
  s.ios.vendored_framework = '*.framework'
  s.dependency 'AFNetworking', '~> 3.0'

  
  # s.resource_bundles = {
  #   'LPMusicKitiOS' => ['LPMusicKitiOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
