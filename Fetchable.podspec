Pod::Spec.new do |spec|
  spec.name         = 'Fetchable'
  spec.version      = '0.0.1'
  spec.summary      = 'Coming soon to a table (or collection) view near you.'
  spec.description  = <<-DESC
                    FRC-backed UITableView and UICollectionViewControllers in as little as 47 lines of code.
                    DESC
  spec.homepage     = 'https://github.com/phatblat/Fetchable'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.author       = { 'Ben Chatelain' => 'benchatelain@gmail.com' }

  spec.platform     = :ios, '6.0'

  spec.source       = { :git => 'https://github.com/phatblat/Fetchable.git',
                        # :branch  => 'master'
                        # :tag => "#{spec.version}"
                        :commit => '218deadbb8bcaafd4f0f9d284d687020b392c44f'
                      }

  # spec.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  # spec.exclude_files = 'Classes/Exclude'

  # spec.public_header_files = 'Classes/**/*.h'

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = 'SomeFramework'
  # spec.frameworks = 'SomeFramework', 'AnotherFramework'

  # spec.library   = 'iconv'
  # spec.libraries = 'iconv', 'xml2'

  spec.requires_arc = true

  # spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  spec.dependency 'MagicalRecord', '~> 2.2'

end
