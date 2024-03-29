Pod::Spec.new do |s|
  s.name             = 'LibXMTP'
  s.version          = '0.4.1'
  s.summary          = 'XMTP shared Rust code that powers cross-platform SDKs'
  s.homepage         = 'https://github.com/xmtp/libxmtp-swift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'XMTP Labs' => 'eng@xmtp.com' }

  s.platform         = :ios, '13.0', :macos, '11.0'
  s.swift_version    = '5.3'

  s.source       = { :http => "https://github.com/xmtp/libxmtp/releases/download/test-swift-bindings-ecb15b7/LibXMTPSwiftFFI.zip" }
  s.vendored_frameworks = 'LibXMTPRust.xcframework'
  s.source_files = 'Sources/LibXMTP/**/*'
  s.test_spec 'UnitTests' do |test_spec|
    test_spec.source_files = 'Tests/LibXMTPTests/**/*'
  end
end
