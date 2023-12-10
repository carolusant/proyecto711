# Proyecto Diseño Digital
### Autores

- [@carolusant](https://github.com/carolusant) - Carlos Antonio Gonzalez Garza - 20192000980

- [@Salomon-Choi](https://github.com/Salomon-Choi) - Salomon Alejandro Choi Jovel - 20192000057

- [@juandavidh07](https://github.com/juandavidh07) - Juan David Hernández Landaverde - 20162030631

- [@JulioAGuevara](https://github.com/JulioAGuevara) - Julio Alejandro Guevara Ramirez - 20212100089

 ## Instalación
Empezaremos preparando nuestra base de datos, para eso primero instalaremos [xampp](https://www.apachefriends.org/download.html) para crear un servidor local con MySQL (Aunque se puede hacer uso de un servidor MySQL+PHP de su preferencia). Abrimos el PhpMyAdmin el cual esta ubicado en el [localhost](http://localhost/phpmyadmin/), una vez estemos allí damos click a **Importar** y luego seleccionamos el archivo `tienda.sql` que se ha proporcionado.

Otra alternativa de servidor que permite crear y probar aplicaciones o páginas web [wamp](https://sourceforge.net/projects/wampserver/files/latest/download) (Windows Apache MySQL PHP).

![Importar BD](https://i.postimg.cc/9f4rGCRQ/image.png)

Una vez se haya creado la base de datos con sus registros correspondientes, procederemos a clonar el repositorio a la computadora, una vez descargado, ir a la carpeta raíz llamada **proyecto** y ejecute el siguiente comando para instalar todas las dependencias necesarias para ejecutar el proyecto
```bash
npm install
```
Después de haya finalizado, ejecutemos el siguiente comando para levantar el servidor
```bash
npm run dev
```
Si todo ha ido bien debería de salirnos un mensaje que nos indique estamos conectados a la DB y el puerto en el cual está escuchando el servidor y ahora estamos listos para usar nuestra API.


![Servidor Activo](https://i.postimg.cc/SN6M1SxT/image.png)

Ya debería estar corriendo en la siguiente dirección:
```url
http://localhost:4000/
```


## Autenticación
Lo primero que tenemos que hacer para poder usar la API, es autenticarse, esto lo hacemos enviando un **POST** al endpoint `/auth ` que lleve como body un JSON que contenga el usuario y el password con el cual deseamos autenticarnos, puede hacerlo utilizando las credenciales por defecto `admin:1234` y `root:0000`, o bien, creando su propio usuario.

###### Ruta
```http
POST localhost:4000/auth/
```
###### Body
```json
{
  "usuario":"admin",
  "password":"1234"
}
```

###### Estaremos utilizando Postman para realizar las pruebas a la API
![post a login](https://i.postimg.cc/PqG0XMjr/image.png)


El servidor nos enviará un JSON el cual contiene un token que enviaremos en cada solicitud para poder obtener acceso a la API, de otra manera no nos deja hacer nada con el endpoint `/productos`. El token es el string alfanumérico que viene como body.

![Token recibido](https://i.postimg.cc/HxNwmBq6/image.png)


## Operaciones sobre el endpoint `/productos/`
Ahora pasaremos a demostrar las operaciones CRUD que se pueden realizar sobre el endpoint de `/productos` mediante el manejo de los verbos http que se nos solicitaron en los requerimientos del proyecto.


### Verbo GET - Operación READ
Empezaremos haciendo un `GET` a ese endpoint para obtener todos los productos guardados en la base de datos, para ellos nos vamos a la ruta dada y en la opción que dice `Authorization` vamos seleccionar el `Type` como `Bearer Token` y en la casilla de texto que se nos despliega introduciremos el token que nos vino en el request anterior.


```http
GET localhost:4000/productos/
```
![GET](https://i.postimg.cc/c1jpkWbn/image.png)


Con eso obtendremos acceso a la API y se nos mostraría el JSON en el cual viene en el código de respuesta y todos los productos almacenados en la base de datos.


![response get](https://i.postimg.cc/Pxkxw7gL/image.png)


Si no se envía token o este está incorrecto obtendremos un mensaje que de error el cual nos indica que no viene token (o viene malo) en el request y no nos permite ver nada.
###### Sin token
![sin token](https://i.postimg.cc/8CV8TV80/image.png)
###### Token incorrecto
![mal token](https://i.postimg.cc/3Rnzj4ks/image.png)

La API nos permite poder enviar el id del producto queramos obtener directamente
```http
GET localhost:4000/productos/6
```
![por id](https://i.postimg.cc/YCQ0n0Xh/image.png)

Y podemos enviar una categoria como parametro para filtrar productos por categoria.
```http
GET localhost:4000/productos?categoria="Hogar"
```
![por cate](https://i.postimg.cc/WznLqRSp/image.png)



### Verbo POST - Operación CREATE
Haciendo un `POST` a ese mismo endpoint podremos crear productos, de igual manera necesitaremos enviar el token de la misma manera que lo hicimos anteriormente y en el body deberemos enviar el JSON con los datos del nuevo producto que deseamos agregar.


###### Ruta
```http
POST localhost:4000/productos/
```
###### Body
`el id debe ser 0 para indicarle a la bd que es un nuevo producto`
```json
{
  "id": 0,
  "nombre": "Licuadora Ninja 3421",
  "categoria": "Hogar",
  "precio": 13500
}
```


Como podemos observar al enviar la petición obtenemos una respuesta que nos dice que el producto se ha agregado exitosamente y de igual manera si nos vamos para el [PhpMyAdmin](http://localhost/phpmyadmin) vamos a poder observar que ese registro a ha sido agregado a la base de datos.


![post productos](https://i.postimg.cc/wTKpTJdv/image.png)





### Verbo PUT - Operación UPDATE
El `PUT` nos permitirá actualizar registros existentes en nuestra base de datos, la operación y los parámetros son prácticamente los mismos del POST, le enviamos el token y el JSON con los datos del productos a actualizar, especificando el id y los datos que se desean actualizar, por ejemplo:


###### Ruta
```http
PUT localhost:4000/productos/
```
###### Body
```json
{
    "id": 1,
    "nombre": "Samsung Galaxy S23U",
    "categoria": "Electrónica",
    "precio": 27560
}
```
###### Ejecución en Postman
![put postman](https://i.postimg.cc/02ghYsj2/image.png)




### Verbo DELETE - Operación DELETE
La operación `DELETE` de igual manera requerirá del token que ya habíamos obtenido previamente y de un JSON como body, en ese JSON solo irá el id del producto que deseamos eliminar de la base de datos.


###### Ruta
```http
DELETE localhost:4000/productos/
```
###### Body
```json
{
  "id":1
}
```
###### Tendría que devolver la respuesta de que el item ha sido eliminado con éxito con el código adecuado.
![DELETE postman](https://i.postimg.cc/HxtDnv09/image.png)


##
##

### NOTA
El endpoint de `/usuarios` se creó solo para poder crear usuarios de una manera un poco más robusta
 (con 2 tablas para poder aplicar seguridad) y por conveniencia 'NO tiene protección de rutas.'

Puede agregar nuevos usuarios haciendo un `POST` al endpoint `localhost:4000/usuarios/` y pasandole un JSON en el body el cual debe ir con los siguientes datos:

```json
  {
    "id":0,
    "nombre":"nombreUsuario",
    "usuario":"usuarioLogin",
    "password":"pass",
    "activo":1
  }


```


### NOTA 2
###### LO DE LOS CORS SE LO QUEDAMOS DEBIENDO...





