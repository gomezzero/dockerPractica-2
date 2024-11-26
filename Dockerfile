# Usa la imagen base oficial de Node.js
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios para instalar dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del proyecto al contenedor
COPY . .

# Expone el puerto en el que tu servidor está configurado
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "server.js"]