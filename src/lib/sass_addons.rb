require 'sass'
module Sass::Script::Functions
  def sin(angle)
    angle = (angle.value)*((Math.PI * 2) / 360)
    Sass::Script::Parser.parse(Math.sin(angle).to_s, 0, 0)
  end
  def cos(angle)
    angle = (angle.value)*((Math.PI * 2) / 360)
    Sass::Script::Parser.parse(Math.cos(angle).to_s, 0, 0)
  end
end

