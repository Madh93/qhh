# Generated with RailsBricks
# Initial seed file to use with Devise User Model

# Temporary admin account
# u = User.new(
#     username: "admin",
#     email: "admin@example.com",
#     password: "1234",
#     password_confirmation: "1234",
#     admin: true
# )
# u.skip_confirmation!
# u.save!



# # Test user accounts
# (1..50).each do |i|
#   u = User.new(
#       username: "user#{i}",
#       email: "user#{i}@example.com",
#       password: "1234",
#       password_confirmation: "1234"
#   )
#   u.skip_confirmation!
#   u.save!

#   puts "#{i} test users created..." if (i % 5 == 0)

# end
  
# categorias = ["Aire libre", "Café", "Cine", "Comida", "Compras", "Deporte", "Entretenimiento", "Noche"]
# categorias.each do |cat|
#   a = Category.new(name: cat)
#   a.save!
# end



##SITIOS SEED
sitios = [
    ["La Hakima","Centro Hípico La Hakima",1,"","Camino Paraje Montaña el Púlpito, 83",38206,"660 846 891","samuel.lahakima@gmail.com","http://www.centrohipicolahakima.es/es/",28.4909859,-16.3578875,"Centro hípico con clases de equitación a todos los niveles, largos paseos a caballo y una multitud de actividades para niños o celebraciones","Un lugar ideal para disfrutar, no sólo los aficionados a la hípica, sino también todos aquellos a los que les guste disfrutar del aire libre y la naturaleza.","Monitores profesionales con experiencia en equitación, clases de equitación a todos los niveles para adultos y niños/as, paseos a caballo, picnic, excursiones, campamentos, acampadas, actividades para colegios, celebraciones, y un sin fin de divertidas actividades."],
    ["Kiraya","Kiraya Bikes",1,"","Avenida Milán, 71",38206,"686 702 929","info@kirayabikes.com","http://www.kirayabikes.com/",28.5398156,-16.3612211,"Ofrecemos a los visitantes de la isla de Tenerife un turismo activo, con rutas en bicicleta organizadas por nosotros, o simplemente el alquiler de la bicicleta, para que el cliente desarrolle su ruta por la isla, facilitándole la entrega a domicilio de la bici alquilada. Mostramos sitios interesantes de Tenerife que pocos turistas conocen, como son los montes del macizo de Anaga, la Esperanza, y muchos más, ¡todo ello en un medio de transporte limpio y saludable, la bicicleta!","Nuestra afición por las bicicletas viene desde nuestra infancia. Es a partir de ahí lo que nos ha llevado a la creación de Kiraya Bikes.","Diferentes rutas: Anaga-Tegueste, Izaña-La Caldera, Volcán Chinyero..."],
    ["Mesa Mota","Monte de la Mesa Mota",1,"","Calle de la Mesa Mota s/n",38206,"","","",28.5007814,-16.3156576,"Una excelente zona recreativa, que también es utilizada como mirador natural para observar la ciudad de La Laguna, un espacio apetecible para pasear entre los brezos y pinos que pueblan la mesa mota.","Lugar ideal para realizar actividades deportivas, chuletadas con los amigos o simplemente para ir a tomar un descanso.","Utilizado por uiversitarios para realizar grandes fiestas de hasta el millar de personas para celebrar chuletadas en honor a cada facultad."],
    ["Bajamar","Piscinas de Bajamar",1,"","Avenida del Sol, 33",38250,"","","",28.5537716,-16.3449282,"Piscinas naturales de mar. El conjunto está formado por dos piscinas grandes para adultos y una pequeña para niños, todas de agua de mar y dispone de duchas y vestuarios.","El ambiente es familiar y las piscinas están siempre muy concurridas. Por su céntrica situación, en el mismo casco urbano de la zona, hay cerca varios restaurantes y cafeterías.","El entorno está perfectamente habilitado para disfrutar de un paseo por la costa. Al lado de las piscinas, se ubica el faro de Bajamar y una pequeña playa de arena protegida por una escollera."],
    ["Época","Café Época",2,"","Calle Heraclio Sánchez, 5",38204,"922 26 31 53","","https://es-es.facebook.com/barcafeepoca",28.484873,-16.316370,"Café literario con tenue música de jazz con chocolates bebidos, comidos o con alcohol. Café bohemio, con buen trato al cliente, luz tenue y una decoración que lo hace intimo y familiar. Además tienen una gran variedad de libros (intercambiables si deseas llevar otro), juegos de mesa (ajedrez, jenga, damas), un piano y exposiciones temporales (pintura, fotografía).","Sin duda la característica de este local es su toque bohemio, parece que al entrar nos transportaran al pasado. Sin duda es un lugar de los difíciles de encontrar.","Es muy agradable y a veces hay personas tocando el piano. Siempre vale la pena pasarse a merendar, tomar un té con tarta con una amigo o jugar al parchís."],
    ["Palmelita","Café Palmelita",2,"","Plaza de la Concepción, 14",38201,"922 25 04 05","","http://www.palmelita.es/",28.497208,-16.320148,"Pastalerías y cafeterías Palmelita ofrece excelentes especialidades de pastelería, panadería y confitería europea","Diferentes establecimientos, como son en Bajamar, San Cristóbal de La Laguna y Santa Cruz de Tenerife.","Nuestras especialidades pueden ser disfrutadas en nuestras pastelerías-cafeterías y acompañadas por ejemplo, con un aromático café o té."],
    ["Melita","Café Melita",2,"","Carretera General de Bajamar, 171",38250,"922 54 08 14","","http://www.palmelita.es/",28.556348,-16.335961,"Pastalerías y cafeterías Palmelita ofrece excelentes especialidades de pastelería, panadería y confitería europea","Diferentes establecimientos, como son en Bajamar, San Cristóbal de La Laguna y Santa Cruz de Tenerife.","Nuestras especialidades pueden ser disfrutadas en nuestras pastelerías-cafeterías y acompañadas por ejemplo, con un aromático café o té."],
    ["Don Tito","Café Don Tito",2,"","Calle Herradores, 88",38201,"922 26 31 48","","",28.4893057,-16.3187639,"Agradable café donde tomar un buen vaso de chocolate caliente, sin dejar de probar sus ricas tartas caseras de calabaza.","Lugar perfecto para charlar con los amigos y descubrir nuevos aromas del café.","Cada jueves se organiza Language café en la planta superior para que la gente pueda aprender a nuevas idiomas, practicar y mejorar su competencia de lenguas o charlar. Todo gratis y muy divertido."],
    ["Exodus","Exodus: Dioses y Reyes",3,"","Camino de la Hornera s/n",38291,"922 82 10 61","","",28.463803,-16.305529,"Dirigida por el aclamado director de 'Gladiator', Ridley Scott, 'Exodus: Dioses y reyes' cuenta la vida del personaje bíblico de Moisés, donde, desafiante, se levanta en contra de su hermanastro el faraón egipcio Ramsés para liberar a los 600.000 esclavos que tiene a su merced. Para ello usará temibles plagas para luego embarcarse en un monumental viaje.","Christian Bale y Joel Edgerton co-protagonizan esta bíblica película co-escrita por los guionistas de 'Admitido' y 'GoldenEye'.","Ridley Scott revisa el relato bíblico de Moisés con una impresionante factura técnica pero con muchos problemas para mantener el ritmo en su larga duración."],
    ["Sinsajo Pt.1","Los Juegos del Hambre: Sinsajo Pt.1",3,"","Camino de la Hornera s/n",38291,"922 82 10 61","","",28.463803,-16.305529,"En el desenlace de la trilogía distópica, una malherida e incluso afectada mentalmente Katniss deberá adaptarse a su nueva vida después de que los rebeldes del 'desaparecido' Distrito 13 la rescaten de la Arena al final de la 75 edición de los Juegos.","¿Continuará la bella y astura protagonista saliendo victoriosa de sus enfrentamientos?","Esta película nos acerca a la última entrega de la saga, Sinsajo Parte 2, con la que concluirá la exitosa producción."],
    ["El Hobbit","El Hobbit: La batalla de los cinco ejércitos",3,"","Camino de la Hornera s/n",38291,"922 82 10 61","","",28.463803,-16.305529,"Después de haber recuperado el reino del Dragón Smaug en la montaña, la Compañía ha desencadenado, sin querer, una potencia maligna. Un Smaug enfurecido vuela hacia la Ciudad del Lago para acabar con cualquier resto de vida. Obsesionado con las enormes riquezas en su poder, el rey enano Thorin se vuelve codicioso, mientras Bilbo intenta hacerle entrar en razón haciendo algo desesperado y peligroso."," Pero hay aún mayores peligros por delante. Sin la ayuda del mago Gandalf, su gran enemigo Sauron ha enviado legiones de orcos hacia la Montaña Solitaria en un ataque épico.","El Hobbit: la Batalla de los Cinco Ejércitos, es la tercera parte de la adaptación cinematográfica de la novela de J. R. R. Tolkien El hobbit."],
    ["El Séptimo Hijo","El Séptimo Hijo",3,"","Camino de la Hornera s/n",38291,"922 82 10 61","","",28.463803,-16.305529,"Thomas Ward (Ben Barnes) tiene trece años, es el séptimo hijo de un séptimo hijo y vive feliz en una granja junto a sus padres, su hermano y su cuñada embarazada. Todo cambia cuando, una tarde, viene a buscarlo un Espectro para llevárselo como aprendiz. Junto a él deberá enfrentarse a criaturas malignas: brujas, boggarts, espíritus y aparecidos.","Thomas no quiere marcharse pero su madre, que tiene poderes ocultos, insiste en que ésa es su obligación y su misión en el mundo. Así pues, no tiene más remedio que obedecer. Adaptación del libro homónimo de Joseph Delaney.","Ha tardado lo suyo, pero ya está aquí la adaptación cinematográfica de 'The Spook's Apprentice' obra del escritor Joseph Delaney. 'El séptimo hijo', en cines a partir del próximo 1 de enero."],
    ["El Aljibe","Tasca el Aljibe",4,"","Camino Tabares, 18",38330,"922 63 61 11","","http://tascaelaljibe.es/",28.491745,-16.371916,"Restaurante de cocina contemporánea amplio y separado en varias salas, sitio agradable donde disfrutar de una buena comida. Ofrece una relación calidad precio de muy buen nivel. Algunas de las personas que han visitado este lugar recomiendan algunas de sus especialidades como pueden ser las batatas con bavalao, el solomillo a las tres salsas o las garbanzas. También posee una buena variedad de ensaladas entre las que encontramos la ensalada de bacalao con frutos secos.","En su carta encontraremos tablas de embutidos, variedad de entrantes y picoteo para empezar y por último divide sus comidas en 'Del mar' y 'Del campo'.","En la Tasca el Aljibe encontraremos una gran variedad de vinos, canarios, nacionales y hasta portugueses. Tintos, blancos y espumosos."],
    ["Casa Pepe","Restaurante Casa Pepe",4,"","Paseo Werner Rautemberg, 5",38250,"922 54 09 58","","",28.55485,-16.34534,"Casa Pepe es uno de esos sitios que sorprenden, donde las materias primas de primerísima calidad son tratadas de manera genial. Son excepción los restaurante que a precios asequibles consiguen ofrecer un disfrute gastronómico de calidad. Casa Pepe es uno de ellos. Si tu camino te trae a Bajamar, no puedes dejar de visitarlo."," La comida de excelente calidad, pescado del día, todo recién hecho - mejor dejarse aconsejar según el apetito y el plan (compartir o no).","El trato es inmejorable y la comida de primera, teniendo en cuenta calidad-precio no hay nada comparable por los alrededores."],
    ["Pecatti Di Gola","Pecatti Di Gola",4,"","Calle Marques de Celada, 11",38202,"922 26 52 57","","https://www.facebook.com/pages/Peccati-DI-GOLA-La-Laguna/1506995572852125",28.49028,-16.321551,"Carta variada y con personalidad. Platos elaborados con mucho gusto y estilo. Ambiente muy agradable y servicio espectacular. Postres exquisitos y gran variedad de vinos. Un lugar muy recomendable que te invita a repetir.","Comida italiana autentica y creativa, fuera del tópicos de las pastas y las pizzas de muchos restaurantes italianos.","El restaurante Peccati di Gola tiene 2 ambientes agradables, no recargados, y no ruidosos, donde puedes mantener conversaciones disfrutando de la comida. Lo mejor, por supuesto, es la comida."],
    ["Casa de mi Abuela","Restaurante La Casa de Mi Abuela",4,"","Carretera del Monte de Las Mercedes, 6, Las Canteras",38293,"922 26 91 72","","https://www.facebook.com/RestauranteCasaDeMiAbuela",28.513519,-16.305637,"Restaurante de comida casera ubicado en Las Canteras en La Laguna. Ofrecemos auténtica comida canaria en La Laguna. Nuestras especialidades son el lomo de bacalao y las carnes a la parrilla.","Jamón serrano ibérico, Quesos canarios con confitura, Queso asado, Parrillada de verduras asadas, Gambas crujientes con albahaca, Milhojas de berenjena, bacalao y miel de palma, Croquetas caseras, Revuelto de gambas...","Se puede destacar el cuidado de los detalles en la presentación de sus platos, recetas tradicionales elaboradas con originalidad y con el sello propio del local, que hacen que algunos platos de siempre resulten más atractivos y novedosos."]
]


sitios.each do |sit|
    s = Site.new(
        name: sit[0],       #string
        longname: sit[1],   #string
        category: sit[2],   #integer
        tags: sit[3],       #string
        address: sit[4],    #string
        postal: sit[5],     #integer
        phone: sit[6],      #string
        mail: sit[7],       #string
        webpage: sit[8],    #string
        latitude: sit[9],   #float x.123456
        longitude: sit[10],  #float
        text1: sit[11],     #text
        text2: sit[12],     #text
        text3: sit[13]      #text
    )
    s.save!
end
