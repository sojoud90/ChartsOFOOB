Pod::Spec.new do |s|

 
  s.name         = "ChartsOFOOB"
  s.version      = "2.0"
  s.summary      = "A short description of ChartsOFOOB."

 
  s.homepage     = "http://EXAMPLE/ChartsOFOOB"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


 
  s.license      = "MIT"
 
   #

  s.author             = "sojoud90"
  
   s.platform     = :ios, "10.0"
 
 
  s.source       = { :git => "https://github.com/sojoud90/ChartsOFOOB.git", :tag => "2.0" }


  
  s.source_files  = "OOB", "SetData/**/*.{h,m,swift}"



     #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }

#FFMpegPlayer', :git => '...FFMpegPlayer.git'
 #s.dependency =  "Charts", git => "https://github.com/danielgindi/Charts"

end
