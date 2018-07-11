Pod::Spec.new do |s|

  s.name         = "YBLabel_Copy"
  s.version      = "0.0.2"
  s.summary      = "Add copy functionality to UILabel"
  s.homepage     = "https://github.com/alexyubin/YBLabel_Copy"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "alexyubin" => "552092914@qq.com" }
  s.social_media_url   = ""
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/alexyubin/YBLabel_Copy.git", :tag => s.version }
  s.source_files  = "YBLabel_Copy/*.{h,m}"
  s.requires_arc         = true

end