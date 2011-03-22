module JQueryFallbackHelper
  def jquery_with_fallback(options={})
    options = {:jquery_version => "1.5.1", :absolute_links => false, :paranoia =>false}.merge(options)
    return local_jquery(options) if options[:paranoia]
    str = ""
    str += "<script src=\"//ajax.googleapis.com/ajax/libs/jquery/#{options[:jquery_version]}/jquery.js\"></script>"
    url = (options[:absolute_links]? '/' : '')+ 'javascripts/libs/jquery.min.js'
    str += "\n<script>window.jQuery || document.write(\"<script src='#{url}'>\\x3C/script>\")</script>"
  end

  def local_jquery(options={})
    url = (options[:absolute_links]? '/' : '')+ 'javascripts/libs/jquery.min.js'
    "<script src='#{url}'></script>"
  end
end
