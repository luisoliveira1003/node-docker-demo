# Use a imagem oficial do Node.js como base
FROM node:18-alpine

# Crie e defina o diretório de trabalho
WORKDIR /usr/src/app

# Copie os arquivos de dependência (package.json e package-lock.json)
COPY package*.json ./

# Instale as dependências
RUN npm install

# Copie o código restante
COPY . .

# Exponha a porta que o app vai rodar
EXPOSE 3000

# Comando para rodar o app
CMD ["npm", "start"]
