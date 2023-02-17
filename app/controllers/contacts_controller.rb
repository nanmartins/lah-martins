class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    @contact.save!
    if @contact.save
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
    params.permit(:name, :email, :message)
  end
end
