class UIView
  def add_borders(locations, color, width = 1)
    possible_locations = [:top, :left, :right, :bottom]
    Array(locations).each do |location|
      if possible_locations.include?(location)
        method_call = "add_#{location.to_s}_border"
        self.send(method_call, color, width)
      else
        puts "You must provide a border location in: #{possible_locations}"
      end
    end
    self
  end

  def add_top_border(color, width)
    add_border_with_frame(color, CGRectMake(0, 0, CGRectGetWidth(self.frame), width))
  end

  def add_right_border(color, width)
    add_border_with_frame(color, CGRectMake(CGRectGetWidth(self.frame) - width, 0, width, CGRectGetHeight(self.frame)))
  end

  def add_bottom_border(color, width)
    add_border_with_frame(color, CGRectMake(0, CGRectGetHeight(self.frame) - width, CGRectGetWidth(self.frame), width))
  end

  def add_left_border(color, width)
    add_border_with_frame(color, CGRectMake(0, 0, width, CGRectGetHeight(self.frame)))
  end

  def add_border_with_frame(color, frame)
    color = color.CGColor if color.is_a?(UIColor)
    border = CALayer.layer.tap do |l|
      l.backgroundColor = color
      l.frame = frame
    end
    self.layer.addSublayer(border)
  end
end
