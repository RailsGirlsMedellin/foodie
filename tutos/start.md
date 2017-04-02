# Empezemos

Despues de haber realizado la instalación, vamos a crear una nueva aplicación nombrada  *foodie*

### Crear app
Abre la terminal y ubica la carpeta donde deseas guardar la app, para navegar entre carpetas en la terminal usamos los comandos ```$ cd nombredelacarpeta``` para entrar y ```$ cd ..``` para salir. Ademas con ```$ ls```  o ```$ dir``` puedes ver lo que hay dentro de la capeta en la que te encuentras.

Para crear la app de rails ejecutamos

```
$ rails new foodie
```
Esto creará una nueva aplicación en la carpeta *foodie*, Entra a la carpeta:

```
$ cd foodie
```
Ahora abre la carpeta foodie en tu editor de texto, revisemos algunas de las carpetas de la aplicación de rails

|Carpeta  | Propósito                                                                                            |
|---------|------------------------------------------------------------------------------------------------------|
| app/    | Contiene los modelos, controladores, vistas, estilos e imagenes, correos, helpers                    |
| config/ | Configuración de las rutas, base de datos, ambientes de desarrollo, traducciones y otros             |
| db/     | Contiene el esquema, las migraciones o cambios de la base de datos                                   |
| public/ | Archivos públicos como imagenes y paginas estaticas de errores de peticiones HTTP                    |
| vendor/ | Contiene los códigos de terceros (e.g. Bootstrap, plantillas )                                       |
| Gemfile/| Archivo con las Gemas de la aplicación, cada vez que se modifique ejecutamos ```$bundle install ```  |

<!---
### Landing Page

Para la landing necesitamos como mínimo un controlador y una vista,Para generarlos ejecuta:
```
$rails generate controller pages index
```
Esto crea un controlador llamado *landing* con una acción o método llamado *index*  y dentro de la carpeta de vistas una carpeta que se llama *landing* con un archivo ``` .html.erb```  llamado *index*  y su ruta de acceso en el archivo ``` routes.rb```

abre la vista que se encuenta en  ``` app/views/pages/index.html.erb``` y empieza agregar información a la landing page.

### Foodie en el navegador
Levantemos el servidor de rails para empezar a ver la aplicación funcionando, Ejecuta:
```
$rails server
```
En tu navegador abre  [http://localhost:3000](http://localhost:3000)

En la terminal presiona <kbd>Ctrl</kbd>+<kbd>C</kbd> para detener el servidor

### ROOT (página de inicio)
configuremos la landing como pagina de inicio cuando abramos  [http://localhost:3000](http://localhost:3000).

Abre el archivo que se encuenta en  ``` config/routes.rb ```  y cambia la linea
```ruby
get 'pages/index'
```
por
```ruby
root 'pages#index'
```
-->
[Siguiente](../tutos/scaffold.md)

