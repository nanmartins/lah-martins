class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
      if @contact.valid?
        ContactMailer.contact_email(@contact).deliver_now
        flash[:notice] = "Thanks for your message. We'll be in touch soon!"
        redirect_to root_path
      else
        flash[:alert] = "Oops! Something went wrong. Please check your information and try again."
        redirect_to root_path
      end
  end

  private

  def contact_params
    params.permit(:name, :email, :message)
  end

end
