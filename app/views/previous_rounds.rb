class PreviousRounds < UIView
  attr_reader :controller, :round_views
  def initialize(controller)
    @controller = controller
    @round_views = []
    init
    self.styleClass = "previous-rounds"
    init_labels
  end

  def refresh
    round_views.each do |view|
      view.refresh
    end
  end

  def init_labels
    rounds.each_with_index do |r, idx|
      view = round_views[idx] = PreviousRound.new(r, controller, idx)
      addSubview( view )
    end
  end

  def rounds
    Round.all
  end
end
