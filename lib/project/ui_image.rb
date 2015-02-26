class UIImage
  # Pads an image with transparency around it.
  # Requires Sugarcube
  def pad_to(s, args={})
    s = CGSizeMake(s[0], s[1]) if s.is_a?(Array)
    UIImage.canvas(size: s) do |context|

      if args[:background]
        args[:background].setFill
        CGContextAddRect(context, [[0, 0], s])
        CGContextDrawPath(context, KCGPathFill)
      end

      if args[:at] == :top_left
        origin = CGPointMake(0, 0)
      else
        origin = CGPointMake((s.width - self.size.width) / 2, (s.height - self.size.height) / 2)
      end
      self.drawAtPoint(origin)
    end
  end

  # Returns a UIImage with UIImageRenderingModeAlwaysTemplate
  def template
    self.imageWithRenderingMode(UIImageRenderingModeAlwaysTemplate)
  end

end
