class RoundController < UIViewController
  include BW::KVO
  attr_reader :score_grid, :course_name, :round
  def init(round)
    @round = round
    ret = super()
    view.styleId = 'round'
    init_score_grid
    init_course_name
    ret
  end

  def init_score_grid
    @score_grid = ScoreGrid.new
    @score_grid.sizeToFit
    view.addSubview(@score_grid)
  end

  def init_course_name
    @course_name = UITextField.alloc.initWithFrame(CGRectZero)
    course_name.styleClass = 'course-name'
    course_name.setBackgroundColor(UIColor.clearColor)
    course_name.setPlaceholder("Course Name")
    course_name.returnKeyType = UIReturnKeyDone
    course_name.delegate = self
    view.addSubview(course_name)
    observe(course_name, :text) do |stale, fresh|
      puts "#{stale} -> #{fresh}"
    end
    course_name.text = round.course_name
  end

  def exit
    presentingViewController.dismissViewControllerAnimated(true, completion:nil)
  end

  def textFieldShouldReturn(field)
    field.resignFirstResponder
  end
end