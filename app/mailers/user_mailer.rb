# # app/mailers/user_mailer.rb
# class UserMailer < ApplicationMailer
#   default from: 'notification@example.com'
#   helper ApplicationHelper

#   def new_user_email(user, admin_email)
#     @user = user
#     mail(to: admin_email, subject: 'New User Created')
#   end

#   def competency_expiration_email(user, competency)
#     @user = user
#     @competency = competency
#     mail(to: @user.email, subject: "#{competency.name.capitalize} Competency Expiration Notice")
#   end

#   def send_job_email(user, job)
#     @user = user
#     @job = job
#     mail(to: @user.email, subject: "Job Opportunity: #{@job.title}")
#   end

#   def approval_email(user)
#     @user = user
#     mail(to: @user.email, subject: 'Your account has been approved')
#   end

#   def rejection_email(user)
#     @user = user
#     mail(to: @user.email, subject: 'Your account has been rejected')
#   end

# end

# require 'httparty'
# include ActionView::Rendering

class UserMailer < ApplicationMailer
  include ApplicationHelper


  def new_user_email(user, admin_email)
    @user = user

    # Use manual reading for both HTML and text templates
    html_content = render_template('user_mailer/new_user_email.html.erb')
    text_content = render_template('user_mailer/new_user_email.text.erb')

    send_email_via_brevo(
      sender: { name: 'DNN', email: 'miriamciurea@gmail.com' },
      to: admin_email,
      subject: 'New User Created',
      html_content: html_content,
      text_content: text_content
    )
  end

  def competency_expiration_email(user, competency)
    @user = user
    @competency = competency

    # Manual rendering for competency expiration email
    html_content = render_template('user_mailer/competency_expiration_email.html.erb')
    text_content = render_template('user_mailer/competency_expiration_email.text.erb')

    send_email_via_brevo(
      sender: { name: 'DNN', email: 'miriamciurea@gmail.com' },
      to: @user.email,
      subject: "#{competency.name.capitalize} Competency Expiration Notice",
      html_content: html_content,
      text_content: text_content
    )
  end

  def send_job_email(user, job)
    @user = user
    @job = job

    # Manual rendering for job email
    html_content = render_template('user_mailer/send_job_email.html.erb')
    text_content = render_template('user_mailer/send_job_email.text.erb')

    send_email_via_brevo(
      sender: { name: 'DNN', email: 'miriamciurea@gmail.com' },
      to: @user.email,
      subject: "Job Opportunity: #{@job.title}",
      html_content: html_content,
      text_content: text_content
    )
  end

  def approval_email(user)
    @user = user

    # Manual rendering for approval email
    html_content = render_template('user_mailer/approval_email.html.erb')
    text_content = render_template('user_mailer/approval_email.text.erb')

    send_email_via_brevo(
      sender: { name: 'DNN', email: 'miriamciurea@gmail.com' },
      to: @user.email,
      subject: 'Your account has been approved',
      html_content: html_content,
      text_content: text_content
    )
  end

  def rejection_email(user)
    @user = user

    # Manual rendering for rejection email
    html_content = render_template('user_mailer/rejection_email.html.erb')
    text_content = render_template('user_mailer/rejection_email.text.erb')

    send_email_via_brevo(
      sender: { name: 'DNN', email: 'miriamciurea@gmail.com' },
      to: @user.email,
      subject: 'Your account has been rejected',
      html_content: html_content,
      text_content: text_content
    )
  end

  private

  # Manual template reading and rendering using ERB
  def render_template(template_file)
    template_path = Rails.root.join('app', 'views', template_file)
    template_content = File.read(template_path)
    ERB.new(template_content).result(binding) # Use binding to process the @user and @competency variables
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
