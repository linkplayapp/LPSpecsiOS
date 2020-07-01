#
# Be sure to run `pod lib lint LPMSAmazonMusiciOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LPMSAmazonMusiciOS'
  s.version          = '1.0.0'
  s.summary          = 'A short description of LPMSAmazonMusic.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  AmazonMuisc SDK
                       DESC

  s.homepage         = 'https://github.com/feitiandalong/LPMSAmazonMusiciOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'LinkPlay' => 'ios_team@linkplay.com' }
  s.source           = { :git => 'https://github.com/linkplayapp/LPMSAmazonMusiciOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.ios.vendored_framework = '*.framework'

  s.dependency 'LPMDPKitiOS'
  s.dependency 'MBProgressHUD', "~> 1.2.0"

  # s.resource_bundles = {
  #   'LPMSAmazonMusiciOS' => ['LPMSAmazonMusiciOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'

end
