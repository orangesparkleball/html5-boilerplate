require 'sass'
module Sass::Script::Functions
  def sin(angle)
    Sass::Script::Parser.parse(Math.sin(angle.value).to_s, 0, 0)
  end
  def cos(angle)
    Sass::Script::Parser.parse(Math.cos(angle.value).to_s, 0, 0)
  end
end

