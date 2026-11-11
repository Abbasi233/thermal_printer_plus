#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint thermal_printer.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'thermal_printer_plus'
  s.version          = '1.0.11'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'http://codingdevs.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Coding Devs' => 'contact@codingdevs.com' }
  s.source           = { :path => '.' }
  s.source_files = 'thermal_printer_plus/Sources/thermal_printer_plus/**/*.{h,m,swift}'
  s.public_header_files = 'thermal_printer_plus/Sources/thermal_printer_plus/include/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  s.frameworks = ["CoreBluetooth", "CoreGraphics", "CFNetwork", "SystemConfiguration", "CoreTelephony", "WebKit"]
  s.vendored_frameworks = 'thermal_printer_plus/Vendor/GSDK.xcframework'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  # Flutter.framework does not contain a i386 slice.
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  # s.swift_version = '5.0'
end
