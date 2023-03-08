class ContactsController < ApplicationController

  def create
    @contact = Contact.new(contact_params)
      if @contact.valid?
        ContactMailer.contact_email(@contact).deliver_now
        flash[:notice] = "Mensagem enviada com sucesso"
        redirect_to root_path
      else
        flash[:alert] = "Não foi possível enviar o email. Tente novamente mais tarde."
        redirect_to root_path
      end
  end

  private

  def contact_params
    params.permit(:name, :email, :message)
  end

end
