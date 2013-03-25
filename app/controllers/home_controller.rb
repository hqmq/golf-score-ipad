class HomeController < UIViewController
  def viewDidLoad
    puts "HomeController#viewDidLoad"
    view.styleId = 'home-view'
    init_add_button
  end

  def init_add_button
    @add_button= UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @add_button.setTitle("New Round", forState: UIControlStateNormal)
    @add_button.sizeToFit
    view.addSubview(@add_button)
  end
end