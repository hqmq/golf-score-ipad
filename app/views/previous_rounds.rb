class PreviousRounds < UIView
  attr_reader :controller
  def initialize(controller)
    @controller = controller
    init
    self.styleClass = "previous-rounds"
    init_labels
  end

  def init_labels
    rounds.each_with_index do |r, idx|
      addSubview( PreviousRound.new(r, controller, idx) )
    end
  end

  def rounds
    Round.all
  end
end
