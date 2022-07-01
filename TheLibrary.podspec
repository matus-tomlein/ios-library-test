Pod::Spec.new do |s|
    s.name = 'TheLibrary'
    s.version = '1.0.0'
    s.swift_version = '5.3'
    s.cocoapods_version = '~> 1.10'
    s.summary = 'Demo of a Swift package manager library with Objective-C code.'
    s.description  = <<~DESC
        More info about the library.
        Demo of a Swift package manager library with Objective-C code.
    DESC
    s.homepage = 'https://github.com/matus-tomlein/swift-pm-library-demo'
    s.license = {
      type: 'MIT',
      file: 'LICENSE'
    }
    s.authors = 'Matus Tomlein'
    s.platforms = {
      ios: '9.0',
      osx: '10.10',
      tvos: '9.0',
      watchos: '6.0',
    }
    s.source = {
      git: 'https://github.com/matus-tomlein/swift-pm-library-demo.git',
      tag: s.version,
    }
    s.source_files = 'Sources/**/*.{m,h}'
    s.dependency 'FMDB', '~> 2.7'
  end
