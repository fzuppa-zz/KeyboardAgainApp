Teacup::Stylesheet.new :keyboard do
	import :base

	style :keyboard,
		origin: [0,0],
		size: ["90%", "100%"],
		backgroundColor: UIColor.whiteColor

	style :keyboard_view,
				size: ["100%", "100%"],
				backgroundColor: UIColor.redColor

end
