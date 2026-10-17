FROM nginx:alpine

# Hapus halaman default bawaan nginx
RUN rm -rf /usr/share/nginx/html/*

# Salin konfigurasi nginx (gzip + caching aset)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Salin seluruh berkas situs statis ke web root
COPY index.html styles.css logo-unismuh.png DJI_0100.jpg /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
