# Imagen base oficial de Node
FROM node:20

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copiar package.json y package-lock.json primero (mejor cache de dependencias)
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código
COPY . .

# Exponer el puerto en el que corre la app
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
