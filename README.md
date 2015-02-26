# OTGHelpers

A set of class extenstions I commonly use in my applications for RubyMotion.

## Current additions:

### UILabel

#### `auto_height_for_width(change_width=false)`

Automatically resizes a UILabel's height based on its contents. Optionally, it can shrink the width as well.

### NSString

#### `uiimage`

Runs `UIImage.imageNamed(self)` for the string.

### UIView

#### `add_borders(locations, color, width = 1)`

Adds borders in specified locations on a `UIView`. Possible locations are: `[:top, :left, :right, :bottom]` and can be passed singularly or in an array.

#### `add_top_border(color, width)`
#### `add_right_border(color, width)`
#### `add_bottom_border(color, width)`
#### `add_left_border(color, width)`

These methods are used by the `add_borders` method and can be called independently if needed. 

### UIImage

#### `pad_to(size, args={})`

Pads the size of an image to the specified size.

#### `template`

Returns a UIImage with UIImageRenderingModeAlwaysTemplate

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'OTGHelpers'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install OTGHelpers
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
