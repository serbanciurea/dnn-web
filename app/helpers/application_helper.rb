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

  def truncate_html(html, length: 100, omission: '...')
    return '' if html.nil? || length <= 0

    # Simple HTML tag handler
    buffer = ''
    tag_stack = []
    truncated_length = 0

    # Iterate over each character and manage tags
    html.chars.each do |char|
      buffer << char

      # Handle opening tags
      if char == '<' && buffer[-2..-1] != '</'  # Check for opening tag
        tag_name = buffer.split(' ').first[1..-1]
        tag_stack << tag_name
      elsif char == '>' && buffer[-2..-1] == '/>' # Self-closing tag
        tag_name = buffer.split(' ')[0][1..-2]
        tag_stack.delete(tag_name)
      elsif char == '>' && buffer[-2..-1] == '</'  # Closing tag
        tag_name = buffer.split(' ')[0][2..-1]
        tag_stack.delete(tag_name)
      end

      truncated_length += 1 if char != '<'
      break if truncated_length >= length && tag_stack.empty?
    end

    # Ensure all tags are properly closed
    buffer += omission if truncated_length >= length
    buffer = close_open_tags(buffer, tag_stack)

    buffer.html_safe
  end

  def close_open_tags(html, open_tags)
    open_tags.reverse.each do |tag|
      html += "</#{tag}>"
    end
    html
  end

end
