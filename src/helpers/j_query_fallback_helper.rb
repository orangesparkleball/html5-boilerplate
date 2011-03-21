module JQueryFallbackHelper
  def jquery_with_fallback(options={})
    options = {:version => "1.5.1"}.merge(options)
    str = "<script src=\"//ajax.googleapis.com/ajax/libs/jquery/#{options[:version]}/jquery.js\"></script>"
    str += "\n<script>window.jQuery || document.write(\"<script src='js/libs/jquery.min.js'>\\x3C/script>\")</script>"
  end
end
