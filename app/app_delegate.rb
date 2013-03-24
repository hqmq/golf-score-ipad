class AppDelegate
  attr_reader :window, :add_button
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame( UIScreen.mainScreen.applicationFrame )
    init_button
    @window.styleId = 'main-window'
    @window.makeKeyAndVisible
    true
  end

  def init_button
    @add_button= UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @add_button.setTitle("Add", forState: UIControlStateNormal)
    @add_button.sizeToFit
    @add_button.frame = CGRect.new(
      [
        10,
        window.frame.size.height - 10 - @add_button.frame.size.height
      ],
      @add_button.frame.size)
    window.addSubview(@add_button)
  end
end
