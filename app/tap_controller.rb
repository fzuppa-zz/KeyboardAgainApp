class TapController < UIViewController
	def viewDidLoad
		super

		layout :keyboard do
			subview(KeyboardWithRoundedButtonsView, :keyboard_view)
		end

		#self.view.backgroundColor = UIColor.whiteColor
		#
		#@keyboard = KeyboardWithRoundedButtonsView.alloc
		#@keyboard.initWithFrame(self.view.frame)
		#self.view.addSubview @keyboard

	end
end