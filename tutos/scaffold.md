## Scaffolding

El scaffolding es una técnica que permite crear CRUD(Create, Read, Update, Delete) de un modelo, pero en forma mucho más rápida. Abrimos nuestra consola y escribimos:
```
$rails g scaffold Plate title:string description:text producer:string
```

EL scaffold entonces crea un modelo con los atributos que le especificamos como title etc.. y este modelo representa una tabla que se creara en nuestra base de datos
asi que al crearse modelos en rails se crean tambien archivos de migraciones que contendrán los cambios de nuestra base de datos(nuevas tablas , nuevos campos , cambio de nombre de campos , etc..)
lo interesante de esto es que también creará por nosotros un controlador llamado skills con las acciones: index, show, new, create, edit, update y destroy ,
junto con sus vistas y las rutas para accederlas. Osea ya tenemos todo listo para agregar, modificar, eliminar y listar-ver- nuestros Platos(Plates). Tambien nos crea assets(diseño).

Cada vez que se crean migraciones, para poder visualizar la aplicación en el navegador, rails nos pide que generemos esas migraciones en la base de datos con este comando:
```
$rake db:migrate
```

asi creamos las tablas nuevas o actualizamos la BD

Ya podemos acceder desde nuestros navegadores a http://localhost:3000/plates y ver, crear, editar y borrar nuestros platos
