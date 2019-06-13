use_frameworks!
target 'Rns-testapp' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks

  # Pods for Rns-testapp
  pod 'Rns'
  
  post_install do |installer|
    # Downgrade Swift language version to 4.0 for Pods that don't support Swift 4.2
    installer.pods_project.targets.each do |target|
      if ['RxSwift', 'Web3'].include? target.name
        target.build_configurations.each do |config|
          config.build_settings['SWIFT_VERSION'] = '4.0'
        end
      end
    end
end
end
