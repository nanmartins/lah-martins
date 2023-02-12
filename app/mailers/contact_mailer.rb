class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact_email.subject
  #
  def contact_email(contact)
    @contact = contact
    mail to: "renanmartins989@gmail.com", subject: "Nova mensagem de contato"
  end

end
