class UILabel
  def auto_height_for_width(change_width = false)
    self.lineBreakMode = UILineBreakModeWordWrap
    self.numberOfLines = 0
    maximumLabelSize = CGSizeMake(self.frame.size.width, Float::MAX)

    attributedText = NSAttributedString.alloc.initWithString(self.text, attributes:{NSFontAttributeName => self.font})
    rect = attributedText.boundingRectWithSize([self.frame.size.width, Float::MAX], options:NSStringDrawingUsesLineFragmentOrigin, context:nil)

    w = change_width ? rect.size.width.ceil : self.frame.size.width
    expected_label_size = [w, rect.size.height.ceil]

    new_frame = [self.frame.origin, expected_label_size]
    self.frame = new_frame
  end
  alias :autoHeightForWidth :auto_height_for_width

end
