module ApplicationHelper

  def format_description(description)
    formatted_description = description.dup

    # Handle bold formatting: *text* to <strong>text</strong>
    formatted_description.gsub!(/\*(.*?)\*/, '<strong>\1</strong>')

    # Handle underline formatting: _text_ to <u>text</u>
    formatted_description.gsub!(/_(.*?)_/, '<u>\1</u>')

    # Convert line breaks to <br> tags
    formatted_description.gsub!(/\r\n/, '<br>')

    formatted_description.html_safe
  end

end
