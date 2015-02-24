class UILabel
  def auto_height_for_width
    self.lineBreakMode = UILineBreakModeWordWrap
    self.numberOfLines = 0
    maximumLabelSize = CGSizeMake(self.frame.size.width, Float::MAX)

    attributedText = NSAttributedString.alloc.initWithString(self.text, attributes:{NSFontAttributeName => self.font})
    rect = attributedText.boundingRectWithSize([self.frame.size.width, Float::MAX], options:NSStringDrawingUsesLineFragmentOrigin, context:nil)
    expectedLabelSize = [rect.size.width.ceil, rect.size.height.ceil]

    newFrame = [self.frame.origin, expectedLabelSize]
    self.frame = newFrame
  end
  alias :autoHeightForWidth :auto_height_for_width

end
