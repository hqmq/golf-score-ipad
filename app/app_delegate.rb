class AppDelegate
  attr_reader :window, :store
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @store = NanoStore.shared_store = NanoStore.store(:file, App.documents_path + "/nano.db")
    @window = UIWindow.alloc.initWithFrame( UIScreen.mainScreen.applicationFrame )
    @window.rootViewController = HomeController.alloc.init
    @window.rootViewController.wantsFullScreenLayout = true
    @window.makeKeyAndVisible
    true
  end
end
