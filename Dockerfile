# Menggunakan image dasar Node.js
FROM node:14

# Mengatur direktori kerja di dalam kontainer
WORKDIR /app

# Menyalin package.json dan package-lock.json
COPY package*.json ./

# Menginstal dependensi
RUN npm install

# Menyalin semua file dari direktori saat ini ke dalam kontainer
COPY . .

# Mengekspos port yang digunakan oleh aplikasi
EXPOSE 3000

# Menjalankan aplikasi
CMD ["wait-for-it", "db:3306", "--", "npm", "start"]
