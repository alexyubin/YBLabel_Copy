Pod::Spec.new do |s|

  s.name         = "YBLabel+Copy"
  s.version      = "1.0.0"
  s.summary      = "Add copy functionality to UILabel"
  s.description  = <<-DESC
                   # Features
                    - Supports Interface Builder
                    - Supports long press gesture
                    - Allows enable/disble the copy feature
                    - Works with all UILabel objects already in your project
                   DESC

  s.homepage     = "https://github.com/alexyubin/YBLabel_Copy"
  s.license      = { :type => "MIT", :file => "LICENSE.md" }
  s.author             = { "alexyubin" => "552092914@qq.com" }
  s.social_media_url   = ""
  
  s.platform     = :ios
  s.source       = { :git => "https://github.com/alexyubin/YBLabel_Copy.git", :tag => s.version }

  s.source_files  = "YBLabel+Copy/**/*.{h,m}"
  
  s.requires_arc = true

end