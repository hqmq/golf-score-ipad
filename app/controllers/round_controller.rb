class RoundController < UIViewController
  attr_reader :score_grid, :course_name
  def viewDidLoad
    view.styleId = 'round'
    view.when_tapped do
      presentingViewController.dismissViewControllerAnimated(true, completion:nil)
    end
    init_score_grid
    init_course_name
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
    view.addSubview(course_name)
  end
end