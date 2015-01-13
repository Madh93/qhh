class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
    @sugerencias = sugerir((1..Site.count).to_a)
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

  def encuentra
    @categoria = Category.all
  end

  def show_category
    @category = Category.find(params[:id])
    @site = Site.where(category: @category.id)
    @description = [
      ["Respiremos aire puro", "Aprovecha los amplios espacios al aire libre de La Laguna"],
      ["Tomemos algo...", "Cafeterías y bares donde descansar un rato"],
      ["Las mejores películas", "Disfruta de una amplia cartelera en CC Alcampo"],
      ["¡Barriguita llena corazón contento!", "¿Hambre? La laguna te ofrece la solución"],
      ["Compremos un poco", "Multitud de tiendas para recorrer"],
      ["Mantente en forma", "Diferentes lugares para realizar deporte"],  
      ["Pasa un buen rato", "Sitios de ocio donde te divertirás de lo lindo"],
      ["¡Vámonos de fiesta!", "Locales de ocio nocturno para pasar una buena noche"]]  
  rescue
    redirect_to root_path
  end

  def show_site
    @sitio = Site.find(params[:id])
    @path_header = "sitios/#{@sitio.id}/header.jpg"
  rescue
    redirect_to root_path
  end

  private

  def sugerir (array)
    devolver = []
    3.times do
        aux = array[rand(array.length)]
        devolver << aux
        array.delete(aux)
    end
    devolver
  end
  
end
