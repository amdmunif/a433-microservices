# Dari image node versi 14.21-alpine
FROM node:14.21-alpine as builder
# Membuat direktori /app
WORKDIR /app
# Menyalin semua file yang berawalan package dan berakhiran .json ke direktori /app
COPY package*.json ./
# Menjalankan perintah npm install
RUN npm install
# Menyalin semua file ke direktori /app
COPY . .
# Expose port 3000
EXPOSE 3000
# Menjalankan perintah npm start
CMD [ "npm", "start" ]