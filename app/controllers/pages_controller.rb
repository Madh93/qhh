class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
  end
  
  def inside
  end
  
def posts
    @posts = Post.published.page(params[:page]).per(10)
  end
  
  def show_post
    @post = Post.friendly.find(params[:id])
  rescue
    redirect_to root_path
  end
 
  
  def email
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]
    
    if @name.blank?
      flash[:alert] = "Por favor, introduce tu nombre antes de enviar el mensaje. Gracias."
      render :contact
    elsif @email.blank? || @email.scan(/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i).size < 1
      flash[:alert] = "Debes introducir una dirección de correo válida antes de enviar el mensaje. Gracias."
      render :contact
    elsif @message.blank? || @message.length < 10
      flash[:alert] = "Tu mensaje está vacío. La longitud mínima es de 10 caracteres. No se ha envíado."
      render :contact
    #elsif @message.scan(/<a href=/).size > 0 || @message.scan(/\[url=/).size > 0 || @message.scan(/\[link=/).size > 0 || @message.scan(/http:\/\//).size > 0
    #  flash[:alert] = "You can't send links. Thank you for your understanding."
    #  render :contact
    else    
      ContactMailer.contact_message(@name,@email,@message).deliver_now
      redirect_to root_path, notice: "Tu mensaje ha sido enviado. Gracias."
    end
  end
  
end
