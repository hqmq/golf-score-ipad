# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'
require 'bundler'
Bundler.setup
require 'motion-cocoapods'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'golfscore'

  app.pixate.framework = 'vendor/PXEngine.framework'

  app.interface_orientations = [:landscape_left, :landscape_right]

  app.device_family = :ipad

  app.info_plist['UIStatusBarHidden'] = true

  app.pods do
    pod 'NanoStore', '~> 2.6.0'
  end
end
