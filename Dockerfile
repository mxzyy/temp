# Menggunakan image Node.js sebagai base image
FROM node:14

# Membuat direktori kerja di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json (jika ada)
COPY app/package*.json ./

# Menginstall dependencies
RUN npm install

# Menyalin seluruh kode aplikasi ke direktori kerja
COPY app/ .

# Expose port aplikasi
EXPOSE 3000

# Menjalankan aplikasi
CMD ["node", "app.js"]
