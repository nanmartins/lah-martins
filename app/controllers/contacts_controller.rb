class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Mensagem enviada com sucesso"
      redirect_to root_path
    else
      flash[:alert] = "Algo deu errado, por favor tente novamente"
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
