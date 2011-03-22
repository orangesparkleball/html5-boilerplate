module JQueryFallbackHelper
  def jquery_with_fallback(options={})
    return local_jquery(options) if CONFIG.paranoia
    options = {:version => "1.5.1", :absolute => false}.merge(options)
    str = ""
    str += "<script src=\"//ajax.googleapis.com/ajax/libs/jquery/#{options[:version]}/jquery.js\"></script>"
    url = (options[:absolute]? '/' : '')+ 'javascripts/libs/jquery.min.js'
    str += "\n<script>window.jQuery || document.write(\"<script src='#{url}'>\\x3C/script>\")</script>"
  end

  def local_jquery(options={})
    url = (options[:absolute]? '/' : '')+ 'javascripts/libs/jquery.min.js'
    "<script src='#{url}'></script>"
  end
end
