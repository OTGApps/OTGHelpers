class NSString

  # @return [UIImage]
  def uiimage
    UIImage.imageNamed(self)
  end

  # @return [NSURL]
  def nsurl
    NSURL.URLWithString(self)
  end
end
