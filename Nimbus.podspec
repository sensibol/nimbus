Pod::Spec.new do |s|
  s.name         = "Nimbus"
  s.version      = "1.3.0"
  s.summary      = "The iOS framework that grows only as fast as its documentation"
  s.description  = <<-DESC
  Nimbus is an iOS framework whose feature set grows only as fast as its documentation. By focusing
  on documentation first and features second, Nimbus hopes to be a framework that accelerates the
  development process of any application by being easy to use and simple to understand.
                   DESC
  s.homepage     = "http://nimbuskit.info"
  s.license      = "Apache License, Version 2.0"
  s.authors            = {
    "Jeff Verkoeyen" => "jverkoey@gmail.com",
    "Bubnov Slavik" => "bubnovslavik@gmail.com",
    "Roger Chapman" => "rogchap@gmail.com",
    "Manu Cornet" => "manu.cornet@gmail.com",
    "Glenn Grant" => "glenn@ensquared.net",
    "Aviel Lazar" => "aviellazar@gmail.com",
    "Benedikt Meurer" => "benedikt.meurer@googlemail.com",
    "Anderson Miller" => "anderson@submarinerich.com",
    "Basil Shkara" => "basil@neat.io",
    "Peter Steinberger" => "me@petersteinberger.com",
    "Hwee-Boon Yar" => "hboon@motionobj.com",
    "Stephane Moore" => "stephane.moore@gmail.com"
  }
  s.social_media_url   = "http://twitter.com/NimbusKit"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/jverkoey/nimbus.git", :tag => s.version }
  s.requires_arc = true
 
  s.subspec 'Core' do |ss|
    ss.source_files = 'src/core/src'
  end

  s.subspec 'Badge' do |ss|
    ss.source_files = 'src/badge/src'
    ss.dependency 'Nimbus/Core'
  end

  s.subspec 'Collections' do |ss|
    ss.source_files = 'src/collections/src'
    ss.dependency 'Nimbus/Core'
  end
 
  s.subspec 'Models' do |ss|
    ss.source_files = 'src/models/src'
    ss.dependency 'Nimbus/Core'
  end
 
 
end
