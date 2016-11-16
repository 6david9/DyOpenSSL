Pod::Spec.new do |s|

  s.name         = "DyOpenSSL"
  s.version      = "0.0.1"
  s.summary      = "A short description of DyOpenSSL."
  s.description  = "some description"
  s.homepage     = "http://bar.com/DyOpenSSL"
  s.license      = "MIT"
  s.author       = { "foo" => "foo@bar.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/6david9/DyOpenSSL.git", :tag => "#{s.version}" }
  s.requires_arc = true

  s.source_files  = "DyOpenSSL/Header/*.h"
  s.vendored_libraries = "DyOpenSSL/Lib/libssl.a", "DyOpenSSL/Lib/libcrypto.a"
  s.header_dir = "openssl"

  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/DyOpenSSL'
  }
end
