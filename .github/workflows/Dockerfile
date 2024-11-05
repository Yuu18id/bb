# Menggunakan image dasar Node.js
FROM node:14

# Set direktori kerja di dalam kontainer
WORKDIR /usr/src/app

# Menyalin file package.json dan package-lock.json
COPY package*.json ./

# Menginstall dependensi aplikasi
RUN npm install

# Menyalin semua file aplikasi ke dalam kontainer
COPY . .

# Mengekspos port yang digunakan oleh aplikasi
EXPOSE 3000  # Ganti dengan port yang sesuai jika menggunakan port lain

# Menjalankan aplikasi
CMD ["npm", "start"]
