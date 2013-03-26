class HomeController < UIViewController
  attr_reader :add_button, :round_history
  def viewDidLoad
    puts "HomeController#viewDidLoad"
    view.styleId = 'home'
    init_add_button
    init_round_history
  end

  def init_add_button
    @add_button= UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @add_button.setTitle("New Round", forState: UIControlStateNormal)
    @add_button.sizeToFit
    view.addSubview(@add_button)
  end

  def init_round_history
    @round_history = UILabel.alloc.initWithFrame(CGRectZero)
    @round_history.text = "Previous Rounds"
    @round_history.sizeToFit
    view.addSubview(@round_history)
  end
end