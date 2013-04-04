class PreviousRound < UILabel
  attr_reader :round, :controller
  def initialize(round, controller)
    @round = round
    @controller = controller
    styleClass = 'previous-round'
    puts "Adding previous round #{round.course_name} #{round.created_at}"
    initWithFrame(CGRectZero)
    self.text = "OHAI"
    sizeToFit

    when_tapped do
      load_round
    end
  end

  def load_round
    round_controller = RoundController.alloc.init(round)
    round_controller.modalTransitionStyle = UIModalPresentationFullScreen
    controller.presentViewController(round_controller, animated: true, completion: nil)
  end
end