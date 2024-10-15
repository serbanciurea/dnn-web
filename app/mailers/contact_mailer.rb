  # class ContactMailer < ApplicationMailer
  #   default from: 'your_email@example.com'

  #   def contact_email(contact)
  #     @contact = contact
  #     mail(to: 'ciureaserban777@icloud.com', subject: 'New Contact Form Submission')
  #   end
  # end

class ContactMailer < ApplicationMailer
  default from: 'your_email@example.com'

  def contact_email(contact)
    @contact = contact

    # Manual template rendering
    html_content = render_template('contact_mailer/contact_email.html.erb')
    text_content = render_template('contact_mailer/contact_email.text.erb')

    # Send the email via Brevo
    send_email_via_brevo(
      sender: { name: 'DNN', email: 'miriamciurea@gmail.com' },
      to: 'miriamciurea777@icloud.com',
      subject: 'New Contact Form Submission',
      html_content: html_content,
      text_content: text_content
    )
  end

  private

  # Manual template reading and rendering using ERB
  def render_template(template_file)
    template_path = Rails.root.join('app', 'views', template_file)
    template_content = File.read(template_path)
    ERB.new(template_content).result(binding) # Use binding to process the @contact variable
  end

  # Method for sending the email via Brevo
  def send_email_via_brevo(sender:, to:, subject:, html_content:, text_content:)
    api_key = ENV['BREVO']  # Ensure the API key is set in your environment

    response = HTTParty.post(
      'https://api.brevo.com/v3/smtp/email',
      headers: {
        'Content-Type' => 'application/json',
        'api-key' => api_key
      },
      body: {
        sender: sender,
        to: [{ email: to }],
        subject: subject,
        htmlContent: html_content,
        textContent: text_content
      }.to_json
    )

    if response.code == 200
      Rails.logger.info "Email sent successfully: #{response.body}"
    else
      Rails.logger.error "Error when sending email via Brevo: #{response.body}"
    end
  end
end
