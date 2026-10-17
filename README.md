# Portal Aplikasi — S-3 Pendidikan Unismuh

Laman web statis berisi daftar aplikasi akademik Program Pascasarjana S-3 Pendidikan,
Universitas Muhammadiyah Makassar.

Aplikasi yang ditautkan:

- **SIMAK Mahasiswa** — https://mahasiswa.unismuh.ac.id/
- **SIMAK Dosen** — https://dosen.unismuh.ac.id/
- **SIMAK Staf** — https://staf.unismuh.ac.id/
- **Agenda Perkuliahan** — https://agenda.unismuh.online/
- **Bimbingan Online** — https://bimbingan.unismuh.online/

## Struktur

| Berkas | Keterangan |
|--------|------------|
| `index.html` | Struktur halaman |
| `styles.css` | Gaya & tema (biru Unismuh) |
| `logo-unismuh.png` | Logo universitas |
| `DJI_0100.jpg` | Latar foto udara kampus |
| `Dockerfile` | Image Nginx untuk menyajikan situs statis |
| `nginx.conf` | Konfigurasi Nginx (gzip + caching) |

## Menjalankan secara lokal

Cukup buka `index.html` di browser, atau dengan Docker:

```bash
docker build -t portal-aplikasi .
docker run --rm -p 8080:80 portal-aplikasi
# buka http://localhost:8080
```

## Deploy ke Coolify

1. Push folder ini ke sebuah repository Git (GitHub/GitLab/Gitea) yang terhubung ke Coolify.
2. Di Coolify: **+ New** → **Resource** → **Public/Private Repository**, pilih repo ini.
3. **Build Pack**: pilih **Dockerfile** (Coolify akan memakai `Dockerfile` di root).
4. **Port**: pastikan **80** (sesuai `EXPOSE 80`).
5. Atur **Domain** (FQDN) yang diinginkan — Coolify akan menyediakan HTTPS otomatis.
6. Klik **Deploy**.

Alternatif tanpa Git: gunakan Coolify **Docker Image** jika Anda mem-build dan mem-push image
sendiri ke sebuah registry.
