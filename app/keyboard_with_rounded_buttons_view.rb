class KeyboardWithRoundedButtonsView  < UIView


	def number_of_rows
		3
	end

	def number_of_columns
		3
	end

	def setFrame(aFrame)
	  	super
			init_cells
			layout_changed
	end

	def init_cells
		@cells = Array.new(9)
		(0..8).each do |number|
			cell = new_cell(number+1)
			@cells[number] = cell
			addSubview cell
		end
	end

private


	def layout_changed
		@cell_extent = frame.size.width / number_of_rows
		number_of_columns = self.number_of_columns
		x = y = 0
		@cells.each_with_index do |each, index|

			each.frame =  CGRectMake(x,y,@cell_extent,@cell_extent)
			if ( (index +1) % number_of_columns  == 0)
				y += @cell_extent
				x =  0
			else
				x += @cell_extent
			end
		end
	end



	def new_cell(number)
		cell = UILabel.alloc.initWithFrame([[0,0],[0,0]])
		cell.text = number.to_s
		cell.backgroundColor = UIColor.redColor
		cell
	end

	end