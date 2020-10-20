#
#  Be sure to run `pod spec lint ASGradientLabel.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "ASGradientLabel"
  s.version      = "1.0.0"
  s.summary      = "Gradient Label"

  
  s.description  = <<-DESC
  support text And attributeText content
                   DESC

  s.homepage     = "https://github.com/Andrewmika/ASGradientLabel"
 

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  

  s.author             = { "Andrew Shen" => "iandrew@126.com" }
  
  s.ios.deployment_target = "7.0"
  


  
  s.source       = { :git => "https://github.com/Andrewmika/ASGradientLabel.git", :tag => s.version.to_s }


  
  s.source_files  = "ASGradientLabel/**/*.{h,m}"
  

end
