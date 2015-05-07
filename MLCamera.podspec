Pod::Spec.new do |s|
  s.name             = "MLCamera"
  s.version          = "0.2.0"
  s.summary          = "A simple Custom Continuous shot camera."
  s.homepage         = "https://github.com/MakeZL/MLCamera"
  s.license          = 'MIT'
  s.author           = { "zhangleo" => "zhangleowork@163.com" }
  s.source           = { :git => "https://github.com/MakeZL/MLCamera.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'MLCamera/*'
  s.resource     = "MLCamera/MLCamera.bundle"
end
