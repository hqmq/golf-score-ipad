class HomeController < UIViewController
  attr_reader :add_button, :round_history, :title
  def viewDidLoad
    view.styleId = 'home'
    init_title_label
    init_add_button
    init_round_history
  end

  def init_title_label
    @title = UILabel.alloc.initWithFrame(CGRectZero)
    @title.styleId = "title"
    @title.text = "Golf Score Card"
    @title.sizeToFit
    view.addSubview(@title)
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

  def viewWillAppear(animated)
    @round_history.refresh
    super
  end

  def init_round_history
    if @round_history
      @round_history.removeFromSuperview
      @round_history = nil
    end
    @round_history = PreviousRounds.new(self)
    @round_history.sizeToFit
    view.addSubview(@round_history)
  end

  def new_round
    round = Round.new
    round.created_at = Time.now
    round_controller = RoundController.alloc.init(round)
    round_controller.modalTransitionStyle = UIModalPresentationFullScreen
    presentViewController(round_controller, animated: true, completion: nil)
  end
end
