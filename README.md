
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

![Token](https://i.postimg.cc/PqG0XMjr/image.png)


El servidor nos enviara un JSON en el cual viene un token que enviaremos en cada solicitud para poder obtener acceso a la API, de otra manera nos deja hacer nada con el endpoint `/productos`. El token es el string alfanumerico que viene como body.

![Token](https://i.postimg.cc/HxNwmBq6/image.png)






## API Reference

#### Get all items

```http
  GET /api/items
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### Get item

```http
  GET /api/items/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |


 




Primero instaláremos el gestor de paquetes Yarn, para poder descargar todas las dependencias sin problemas, esto debido a que npm me creaba conflicto con vue

```bash
 npm install --global yarn
```

Luego de eso ejecutamos los siguientes comandos
#### Instalar dependencias del proyecto
```
yarn install
```

#### Lints y corregir archivos
```
yarn lint
```

#### Compilar app y ejecutar el servidor
```
yarn serve
```

## Bugs

Al iniciar la app nos encontramos con ese error muchas veces, llegamos a la conclusión de que era algo error de red porque los datos de esa librería esta siendo entregados mediante una CDN, y también el error se va con solo actualizar la paginas de 2-10 veces, es bien raro. Pero aparte de eso todo funciona como debería.

![error de cdn?](https://i.ibb.co/RvBTtDn/err.png)
#### Para corregir ese bug solo tenemos que actualizar la pagina varias veces

## Autores
```javascript
Carlos Antonio Gonzales Garza 20192000980
Jeyson Samuel Mejia Hernandez 20172002003
```

## Licencia

[MIT](https://choosealicense.com/licenses/mit/)
