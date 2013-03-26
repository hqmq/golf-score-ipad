class RoundController < UIViewController
  attr_reader :add_button
  def viewDidLoad
    view.styleId = 'round'
    view.when_tapped do
      presentingViewController.dismissViewControllerAnimated(true, completion:nil)
    end
  end
end