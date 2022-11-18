# Primero ponemos que version de que tecnologia necesita nuestra aplicacion para funcionar, en esta caso necesitamos node en su version 18
FROM node:18

#El comando workdir nos peromite generar una carpeta en donde se encontraran todos los programas que nuestra aplicacion necesita para funcionar
WORKDIR /app

#Copiamos los archivos que iran dentro del contenedor
COPY package*.json ./

#Instalamos las dependencias
RUN npm install

#copiamos los archivos fuente
COPY . .

#Y finalmente ejecutamos el proyecto
CMD [ "npm","start" ]

#Para ejecutar mi programa debo crear una imagen