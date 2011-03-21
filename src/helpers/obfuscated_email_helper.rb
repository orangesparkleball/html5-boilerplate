module ObfuscatedEmailHelper
  def obfuscated_mail(email, title = email, options = {})
    obfuscated_link(title || email, "mailto:#{email}", options)
  end
  alias obfuscated_mail_to obfuscated_mail
  
  def obfuscated_link(title, href = "", options = {})
    chars, random = [], rand(255)
    plain = link(title, href, options)
    plain.each_byte { |c| chars << "#{c + random}-#{random}" }
    tag(:script, :type => "text/javascript") do
      "document.write(String.fromCharCode(#{chars.join(',')}));"
    end
  end
  alias obfuscated_link_to obfuscated_link
end

