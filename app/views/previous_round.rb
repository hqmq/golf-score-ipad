class PreviousRound < UILabel
  attr_reader :round, :controller
  def initialize(round, controller, idx)
    @round = round
    @controller = controller
    styleClass = 'previous-round'
    initWithFrame(CGRectZero.down(25*idx))
    set_text

    when_tapped do
      load_round
    end
  end

  def load_round
    round_controller = RoundController.alloc.init(round)
    round_controller.modalTransitionStyle = UIModalPresentationFullScreen
    controller.presentViewController(round_controller, animated: true, completion: nil)
  end

  def refresh
    set_text
  end

  def set_text
    self.text = "#{round.course_name} #{round.created_at}"
    sizeToFit
  end
end
