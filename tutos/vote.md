##  Votación para elegir platos

### ¿Qué necesitamos?

1. [Un modelo](https://github.com/ltciro/foodie/new/master/tutos#modelo)

2. [Un controlador y acción](https://github.com/ltciro/foodie/new/master/tutos#controladoraccion)

3. [Una ruta](https://github.com/ltciro/foodie/new/master/tutos#ruta)

4. [Una vista](https://github.com/ltciro/foodie/new/master/tutos#vista)


### Modelo

Queremos habilitar un botón de votaciones por plato para lo usuarios, ¿qué atributos necesita nuestro modelo?
por ahora solo necesitamos un atributo que nos relacione de que plato fue el voto realizado, para generar el model Utilizamos el comando:
```
$ rails g model Vote plate:references
```
esto nos crea las migraciones para la base de datos y un modelo vote.rb en app/models y el tipo references nos genera la relación entre modelos 
en la siguiente linea que esta el el archivo app/models/vote.rb
```ruby
 belongs_to :plate #nos indica que el modelo Vote pertenece a un plate 
```
Recuerda que cada vez que generamos migraciones corremos el comando:
```
$ rake db:migrate
```

### Controlador#accion

el siguiente paso es crear la acción de votar en un controlador, como el voto se le va a hacer a los platos y ya tenemos un controlador plates
que se generó con el sccaffold podemos utilizar ese y no crear uno nuevo para el Vote.

abre el archivo app/controllers/plates_controller.rb y creemos una nueva acción para votar
``` ruby
def upvote
    @plate = Plate.find(params[:id]) #de la ruta recibimos un parametro con el id del plato por el que votaron y consultamos de la bd el objeto plato con ese id y lo almacenamos en una variable de clase definida como @plate
    @plate.votes.create # el objeto consultado tiene la relación con el modelo vote por lo cual podemos acceder a él con .votes y utilizamos .create que nos crea un registro en la bd con el id de nuestro objeto @plate
    redirect_to(plates_path) #luego direccionamos a la vista de platos nuevamente.
 end
```

### Ruta

para acceder acceder a la acción desde el browser necesitamos una ruta, en app/config/routes.rb agregamos:

```ruby
 post 'plates/:id/upvote' => 'plates#upvote', as: :upvote
 # post = verbo de la acción crear
 #'plates/:id/upvote' me indica la url por la que accedemos en el navegador el id que tiene dos puntos al inicio indica que es dinamico se pone el id del plato al que se le va  hacer el voto  y es el parametro que recibimos anteriormente enla acción 
 #'plates#upvote' me indica Controlador#acción ala que se va a dirigir esa ruta
 # as: :upvote es un alias que utilizaremos en la vista mas adelante.
```

### Vista

Al igual que con el controlador no necesitamos crear una vista podemos incluir nuestro botón de votar en el index de platos
en app/views/plates/index.html agregar despues del ...link_to 'destroy'...
```html
 <td><%= pluralize(plate.votes.count, "vote") %></td>
 <td><%= button_to '+1', upvote_plate_path(plate), method: :post %></td>
```
