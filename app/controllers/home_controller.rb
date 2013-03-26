class HomeController < UIViewController
  attr_reader :add_button, :round_history
  def viewDidLoad
    view.styleId = 'home'
    init_add_button
    init_round_history
  end

  def init_add_button
    @add_button= UIButton.buttonWithType(UIButtonTypeRoundedRect)
    @add_button.setTitle("New Round", forState: UIControlStateNormal)
    @add_button.when_tapped do
      new_round
    end
    @add_button.sizeToFit
    view.addSubview(@add_button)
  end

  def init_round_history
    @round_history = UILabel.alloc.initWithFrame(CGRectZero)
    @round_history.text = "Previous Rounds"
    @round_history.sizeToFit
    view.addSubview(@round_history)
  end

  def new_round
    round_controller = RoundController.alloc.init
    round_controller.modalTransitionStyle = UIModalPresentationFullScreen
    presentViewController(round_controller, animated: true, completion: nil)
  end
end