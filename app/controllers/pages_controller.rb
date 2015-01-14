class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
    n = sugerir((1..Site.count).to_a)
    @sugerencias =  Site.where(id: n)
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
    @location = [@sitio]
    @path_header = "sitios/#{@sitio.id}/header.jpg"
    @nombres = ["Adrián", "Álex", "Alicia", "Ana", "Andrea", "Andrés", "Antonio", "Beatriz", "Carlos", 
              "Cristina", "Daniel", "David", "Diego", "Eduardo", "Elena", "Eva", "Gabriel", "Irene", "Jaime", 
              "Javier", "Jorge", "Juan", "Julia", "Julián", "Laura", "Lucía", "Luis", "Marcos", "Mario", 
              "Marta", "Miguel", "Mónica", "Nuria", "Pablo", "Patricia", "Paula", "Raquel", "Raúl", "Ricardo", 
              "Rubén", "Sandra", "Sara", "Sergio", "Silvia", "Sonia", "Tomás", "Víctor", "Óscar"] 
    @com_sitios = ["Fui ayer y lo pasé muy bien.",
                  "Genial sitio, totalmente recomendable.",
                  "Unos amigos míos me lo habían recomendado, y no fallaron.",
                  "Muy bien, lo recomiendo.",
                  "No estuvo mal, pero me esperaba más.",
                  "Directo a mis favoritos!",
                  "No me ha gustado nada.",
                  "Conocí a mi novio aquí, hace ya tres años, gran lugar para recordar.",
                  "He ido con mi familia, y a todos nos ha gustado mucho.",
                  "Bueno, bonito y barato.",
                  "Me ha decepcionado.",
                  "No lo recomiendo, ha cambiado mucho desde la última vez que fui.",
                  "Pues que decir, que prácticamente perfecto.",
                  "Estoy deseando ir algún día.",
                  "Este fin de semana iré, espero no arrepentirme.",
                  "Fantástico sitio!",
                  "Gracias a QueHagoHoy por descubrírmelo!",
                  "Gran sitio, suelo ir cada dos por tres.",
                  "¿QueHagoHoy? pues seguramente visitar este lugar.",
                  "Totalmente recomendable, ahora bien ¿QueHagoMañana? :D",
                  "No lo conocía hasta que lo ví en QueHagoHoy, increíble."]
    @com_peliculas = ["Estoy deseando ver esta película.","Me ha encantado esta película.", 
                "Sin duda se trata de una de las mejores películas de su género.", 
                "Gran película, pero está claro que estas cosas solo pasan en el cine y no en la realidad.",
                "Sublime.",
                "Me esperaba más de ella.",
                "No está mal, pero quizás le falto algo de acción al final.",
                "La ví ayer, y sin ninguna duda, cumplió con mis expectativas.",
                "Menudo aburrimiento de película, no se la recomiendo a nadie.",
                "Peliculón, me ha encantado la puesta en escena de los actores.",
                "Lo mejor, la trama, no cabe duda de que la historia original da para mucho.",
                "Espero verla este finde, me han dicho que es muy buena.",
                "Se nota la mano del director, no hay una sola película que no me haya gustado de él.",
                "Ví la película tras el espectacular tráiler que pusieron en la televisión, sin embargo más allá de eso, no me ha cautivado demasiado.",
                "Me encantó el tráiler, espero poder verla pronto.",
                "Acabo de salir del cine, y lo digo claro, mañana repito. Peliculón.",
                "Bueno cada uno tiene su opinión, pero ya digo, me ha decepcionado.",
                "Increíble el final, no me lo esperaba.",
                "La película empieza algo floja, pero conforme avanza va mejorando. La recomiendo.",
                "Simplemente, sobrevalorada, y no tengo nada más que añadir."]

  rescue
    redirect_to root_path
  end

  def myqhh
    @mysites = Site.where(id: [1,4,7,10,13,16])
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
