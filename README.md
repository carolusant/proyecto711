
# Proyecto Diseño Digital
### Autores

- [@carolusant](https://github.com/carolusant) - Carlos Antonio Gonzalez - 20192000980

 ## Instalación

Empezaremos preparando nuestra base de datos, para eso primero instalaremos [xampp](https://www.apachefriends.org/download.html) para crear un servidor local con MySQL. Abrimos el PhpMyAdmin el cual esta ubicado en el [localhost](http://localhost/phpmyadmin/), una vez estemos alli damos click a **Importar** y luego seleccionamos el archivo .sql que se ha proporcionado.


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
```http
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



El servidor nos enviara un JSON en el cual viene un token que enviaremos en cada solicitud para poder obtener acceso a la API, de otra manera nos deja hacer nada con el endpoint `/productos`. El token es el string alfanumerico que viene como body.

![Token](https://i.postimg.cc/HxNwmBq6/image.png)



