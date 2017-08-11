Pod::Spec.new do |s|
  s.name = "GPAC4iOS"
  s.version = "0.3.9"
  s.summary = "GPAC4iOS is the libgpac library distributed as a Pod."
  s.description = <<-DESC
      GPAC4iOS is the [libgpac library][1] packaged for iOS as a Pod. It is preconfigured and tested to do a single task: create a MP4 file from a raw H.264 and an audio track. 
      libgpac is an Open Source multimedia framework. The project covers different aspects of multimedia, with a focus on presentation technologies (graphics, animation and interactivity) and on multimedia packaging formats such as MP4.
      
      The packaged version of libgpac on commit 674ed4674d25c2b53841a64ec41e3d9762462d39.

      Source: http://gpac.wp.mines-telecom.fr/home/      
                   DESC
  s.homepage = "http://gpac.wp.mines-telecom.fr/"
  s.license      = 'LGPL'
  s.authors       = "GPAC"
  s.source       = { :git => "https://github.com/Keemotion/GPAC4iOS.git", :tag => s.version.to_s }

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.header_mappings_dir = 'Classes/include'
  s.source_files = 'Classes/**/*.{h,cpp,c,tbl}'

  s.xcconfig = {
    "GCC_PREPROCESSOR_DEFINITIONS" => 'GPAC_CONFIG_DARWIN GPAC_IPHONE GPAC_AMR_IN_STANDALONE GPAC_DISABLE_3D GPAC_MODULE_CUSTOM_LOAD'
  }
end
