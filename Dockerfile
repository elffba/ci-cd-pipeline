# Node.js image'ını kullan
FROM node:18

# Çalışma dizinini ayarla
WORKDIR /app

# Package.json dosyalarını kopyala ve bağımlılıkları yükle
COPY package*.json ./
RUN npm install

# Uygulamayı kopyala
COPY . .

# Uygulamayı çalıştır
CMD ["node", "server.js"]

# Portu aç
EXPOSE 3000
