Pod::Spec.new do |s|
  s.name         = "AFNetworking-RACExtensions"
  s.version      = "0.2.0"
  s.summary      = "AFNetworking-RACExtensions is a delightful extension to the AFNetworking classes for iOS and Mac OS X."
  s.homepage     = "https://github.com/MichaelPei/AFNetworking-RACExtensions"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Robert Widmann" => "devteam.codafi@gmail.com" }
  s.source       = { :git => "https://github.com/MichaelPei/AFNetworking-RACExtensions.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc = true
  s.default_subspecs = 'NSURLSession'

  s.subspec 'ExperimentalProgressCallbacks' do |ss|
    ss.dependency 'ReactiveCocoa/Core', '~> 2.0'
    ss.source_files = 'RACAFNetworking/RACSubscriber+AFProgressCallbacks.{h,m}'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'AFNetworking/NSURLSession', '~> 3.1.0'
    ss.dependency 'ReactiveCocoa/Core', '~> 2.0'
    ss.source_files = 'RACAFNetworking/AFHTTPSessionManager+RACSupport.{h,m}'
  end
end
