require 'sass'
module Sass::Script::Functions
  DEGTORAD = Math.PI * 2 / 360;
  def sin(angle)
    angle = angle*DEGTORAD
    Sass::Script::Parser.parse(Math.sin(angle.value).to_s, 0, 0)
  end
  def cos(angle)
    angle = angle*DEGTORAD
    Sass::Script::Parser.parse(Math.cos(angle.value).to_s, 0, 0)
  end
end

