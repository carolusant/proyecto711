
# Proyecto Diseño Digital
### Autores

- [@carolusant](https://github.com/carolusant) - Carlos Antonio Gonzalez - 20192000980

 ## Instalación

Empezaremos preparando nuestra base de datos, para eso primero instalaremos [xampp](https://www.apachefriends.org/download.html) para crear un servidor local con MySQL. Abrimos el PhpMyAdmin el cual esta ubicado en el [localhost](http://localhost/phpmyadmin/), una vez estemos alli damos click a **Importar** y luego seleccionamos el archivo `tienda.sql` que se ha proporcionado.


![Importar BD](https://i.postimg.cc/9f4rGCRQ/image.png)

Una vez se haya creado la base de datos con sus registros correspondientes, procederemos a clonar el repositorio a la computadora, una vez descargado, ir a la carpeta raiz llamada **proyecto** y ejecute el siguiente comando para instalar todas las depencias necesarias para ejecutar el proyecto
```bash
npm install
```
Después de haya finalizado, ejecutemos el siguiente comando para leventar el servidor
```bash
npm run dev
```
Si todo ha ido bien deberia de salirnos un mensaje que nos indique estamos conectados a la DB y el puerto en el cual esta escuchando el servidor y ahora estamos listos para usar nuestra API.

![Servidor Activo](https://i.postimg.cc/SN6M1SxT/image.png)

Ya deberia estar corriendo en la siguiente direccion:
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


El servidor nos enviara un JSON en el cual viene un token que enviaremos en cada solicitud para poder obtener acceso a la API, de otra manera nos deja hacer nada con el endpoint `/productos`. El token es el string alfanumerico que viene como body.

![Token recibido](https://i.postimg.cc/HxNwmBq6/image.png)


## Operaciones sobre el endpoint `/productos/`
Ahora pasaremos a demostrar las operaciones CRUD que se pueden realizar sobre el endpoint de `/productos` mediante el manejo de los verbos http que se nos solicitaron en los requerimientos del proyecto. 

### Verbo GET - Operación READ
Empezaremos haciendo un `GET` a ese endpoint para obtener todos los productos guardados en la base de datos, para ellos nos vamos a la ruta dada y en la opción que dice `Authorization` vamos seleccionar el `Type` como `Bearer Token` y en la casilla de texto que se nos despliega introduciremos el token que nos vino en el request anterior.

```http
GET localhost:4000/productos/
```
![GET](https://i.postimg.cc/c1jpkWbn/image.png)

Con eso obtendriamos acceso a la API y se nos mostraria el JSON en el cual viene en el codigo de respuesta y todos los productos almacenados en la base de datos.

![response get](https://i.postimg.cc/Pxkxw7gL/image.png)

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

Como podemos observar al enviar la peticion obtenemos una respuesta que nos dice que el producto se ha agregado exitosamente y de igual manera si nos vamos para el [PhpMyAdmin](http://localhost/phpmyadmin) vamos a poder observar que ese registro a ha sido agregado a la base de datos. 

![post productos](https://i.postimg.cc/wTKpTJdv/image.png)




### Verbo PUT - Operación UPDATE





### Verbo DELETE - Operación DELETE











##### postasdasdadas


