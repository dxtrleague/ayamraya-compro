<!DOCTYPE html>
<html lang="id">
<head>
    <?php include('top.php'); ?>
</head>
<body>

    <header id="main-header">
        <div class="container">
            <h1 class="logo"><a href="#hero"><img id="j_img" src="pic/logo/logo.png" /></a></h1>
            <nav id="main-nav">
                <ul>
                    <li><a href="#about">Tentang Kami</a></li>
                    <li><a href="#menu">Menu</a></li>
                    <li><a href="#gallery">Galeri</a></li>
                    <li><a href="#testimonials">Testimoni</a></li>
                    <li><a href="#contact">Kontak & Reservasi</a></li>
                </ul>
            </nav>
            <button class="nav-toggle" aria-label="Toggle navigation">&#9776;</button>
        </div>
    </header>

    <section id="hero" class="hero-section">
        <div class="hero-content">
            <h2>Cita Rasa Otentik, Pengalaman Tak Terlupakan</h2>
            <p>Nikmati hidangan istimewa yang dibuat dengan cinta dan bahan-bahan pilihan.</p>
            <a href="#menu" class="btn btn-primary">Lihat Menu Kami</a>
            <a href="#contact" class="btn btn-secondary">Reservasi Sekarang</a>
        </div>
    </section>

    <section id="about" class="section-padding">
        <div class="container">
            <div class="about-content">
                <div class="about-text">
                    <h2>Tentang Kami</h2>
                    <p>Sejak tahun [Tahun Berdiri], [Nama Restoran Anda] telah menjadi destinasi kuliner favorit di [Lokasi Anda]. Kami berkomitmen menyajikan hidangan berkualitas tinggi dengan sentuhan tradisional dan inovasi modern. Setiap hidangan adalah cerita, setiap kunjungan adalah pengalaman.</p>
                    <p>Misi kami adalah memberikan pengalaman bersantap yang tak terlupakan melalui pelayanan prima, suasana nyaman, dan tentunya, hidangan lezat yang menggugah selera.</p>
                </div>
                <div class="about-image">
                    <img src="pic/logo/about.JPG" alt="Suasana Restoran Anda">
                </div>
            </div>
        </div>
    </section>

    <section id="menu" class="section-padding bg-light">
        <div class="container">
            <h2>Menu Unggulan</h2>
            <p class="section-description">Beberapa pilihan terbaik dari menu kami yang wajib Anda coba.</p>
            <div class="menu-grid">
                <div class="menu-item">
                    <img src="central/pic/menu/ayamcabaigaram.jpg" alt="Ayam Cabai Garam">
                    <h3>Ayam Cabai Garam</h3>
                    <p>Ayam fillet dada yang digoreng dengan tepung bersama cabai dan garam. Menu ini meiliki rasa yang cenderung asin pedas.</p>
                    <span class="price">Rp38.000</span>
                </div>
                <div class="menu-item">
                    <img src="central/pic/menu/ayamkungpao.jpg" alt="Ayam Kungpao">
                    <h3>Ayam Kungpao</h3>
                    <p>Ayam fillet dada yang digoreng dengan tepung, kemudian di tumis dengan saus kungpao yang cenderung pedas manis</p>
                    <span class="price">Rp38.000</span>
                </div>
                <div class="menu-item">
                    <img src="central/pic/menu/ayammalaya.jpg" alt="Ayam Malaya">
                    <h3>Ayam Malaya</h3>
                    <p>Ayam fillet dada yang digoreng dengan tepung, kemudian di tumis dengan saus malaya yang cenderung asam pedas</p>
                    <span class="price">Rp38.000</span>
                </div>
				<div class="menu-item">
                    <img src="central/pic/menu/ayamtelurasin.jpg" alt="Ayam Telur Asin">
                    <h3>Ayam Telur Asin</h3>
                    <p>Ayam fillet dada yang digoreng dengan tepung, kemudian di tumis dengan saus malaya yang cenderung asin dan gurih</p>
                    <span class="price">Rp38.000</span>
                </div>
				<div class="menu-item">
                    <img src="central/pic/menu/sopbuntut.jpg" alt="Sop Buntut">
                    <h3>Sop Buntut</h3>
                    <p>Sop Buntut dengan potongan daging, kentang dan wortel</p>
                    <span class="price">Rp38.000</span>
                </div>
				<div class="menu-item">
                    <img src="central/pic/menu/sopiga.jpg" alt="Sop Iga">
                    <h3>Sop Iga</h3>
                    <p>Sop Iga dengan potongan daging, kentang dan wortel</p>
                    <span class="price">Rp38.000</span>
                </div>
				<div class="menu-item">
                    <img src="central/pic/menu/bakmieayam.jpg" alt="Bakmie Ayam">
                    <h3>Bakmie Ayam</h3>
                    <p>Bakmie yang wangi wijen dan ayam putih polos dengan rasa gurih, disajikan dengan kuah dan kerupuk pangsit</p>
                    <span class="price">Rp24.000</span>
                </div>
				<div class="menu-item">
                    <img src="central/pic/menu/bakmieayamchilioil.jpg" alt="Bakmie Ayam Chili Oil">
                    <h3>Bakmie Ayam Chili Oil</h3>
                    <p>Bakmie yang diaduk dengan chili oil, disajikan dengan bakso dan kerupuk pangsit.</p>
                    <span class="price">Rp26.000</span>
                </div>
				<div class="menu-item">
                    <img src="central/pic/menu/bakmieayamkari.jpg" alt="Bakmie Ayam Kari">
                    <h3>Bakmie Ayam Kari</h3>
                    <p>Merupakan perpaduan antara bakmie dengan kuah kari yang gurih dan khas, disajikan juga dengan tahu coklat yang lembut di dalam dan bertekstur di luarnya</p>
                    <span class="price">Rp28.000</span>
                </div>
            </div>
            <div class="text-center">
                <a href="menu-lengkap.pdf" target="_blank" class="btn btn-dark">Unduh Menu Lengkap (PDF)</a>
            </div>
        </div>
    </section>

    <section id="gallery" class="section-padding">
        <div class="container">
            <h2>Galeri Kami</h2>
            <p class="section-description">Berikut ini adalah beberapa layanan yang dapat kami berikan</p>
            <div class="gallery-grid">
                <img src="pic/logo/prasmanan.JPG" alt="Galeri Restoran 1">
                <img src="pic/logo/nasi box.JPG" alt="Galeri Restoran 2">
                <img src="pic/logo/personal.JPG" alt="Galeri Restoran 3">
            </div>
        </div>
    </section>

    <section id="testimonials" class="section-padding bg-light">
        <div class="container">
            <h2>Apa Kata Pelanggan Kami?</h2>
            <div class="testimonial-slider">
                <div class="testimonial-item">
                    <p>"[Nama Restoran Anda] adalah tempat favorit saya! Makanannya luar biasa, suasananya nyaman, dan pelayanannya sangat ramah."</p>
                    <h4>- Nama Pelanggan A</h4>
                </div>
                <div class="testimonial-item">
                    <p>"Setiap hidangan selalu memanjakan lidah. Sangat direkomendasikan untuk pengalaman kuliner yang autentik!"</p>
                    <h4>- Nama Pelanggan B</h4>
                </div>
                </div>
            <div class="slider-nav">
                <span class="dot active" data-slide="0"></span>
                <span class="dot" data-slide="1"></span>
                </div>
        </div>
    </section>

    <section id="contact" class="section-padding">
        <div class="container">
            <h2>Kontak & Reservasi</h2>
            <div class="contact-grid">
                <div class="contact-info">
                    <h3>Central Kitchen</h3>
                    <p><i class="fas fa-map-marker-alt"></i><img src="central/pic/jumbo/home_bl.png" id="ico_img"></p>
					<p><i class="fas fa-map-marker-alt"></i>Jl. Nuri Bintaro 2 Blok A8 No.11</p>
					<p><i class="fas fa-map-marker-alt"></i>Kelurahan Pondok Ranji</p>
					<p><i class="fas fa-map-marker-alt"></i>Kecamatan Ciputat Timur</p>
					<p><i class="fas fa-map-marker-alt"></i>Kota Tangerang Selatan, Banten 15412</p>
					<br/>
					<p><i class="fas fa-map-marker-alt"></i><img src="central/pic/jumbo/phone_bl.png" id="ico_img"></p>
                    <p><i class="fas fa-phone-alt"></i>0821-2247-8669</p>
					<p><i class="fas fa-map-marker-alt"></i><img src="central/pic/jumbo/mail_bl.png" id="ico_img"></p>
                    <p><i class="fas fa-envelope"></i>sales@saturuangraya.com</p>
                    <p><i class="fas fa-clock"></i>Jam Operasional : Selasa - Minggu (11:00 - 21:00)</p>
                    <div class="social-media">
                        <a href="URL_FACEBOOK_ANDA" target="_blank" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
                        <a href="URL_INSTAGRAM_ANDA" target="_blank" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
                        <a href="URL_TWITTER_ANDA" target="_blank" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
                    </div>
                </div>
                <div class="reservation-form">
                    <h3>Reservasi Online</h3>
                    <form action="#" method="POST">
                        <div class="form-group">
                            <label for="name">Nama Lengkap</label>
                            <input type="text" id="name" name="name" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Nomor Telepon</label>
                            <input type="tel" id="phone" name="phone">
                        </div>
                        <div class="form-group">
                            <label for="date">Tanggal</label>
                            <input type="date" id="date" name="date" required>
                        </div>
                        <div class="form-group">
                            <label for="time">Waktu</label>
                            <input type="time" id="time" name="time" required>
                        </div>
                        <div class="form-group">
                            <label for="guests">Jumlah Tamu</label>
                            <input type="number" id="guests" name="guests" min="1" required>
                        </div>
                        <div class="form-group">
                            <label for="message">Pesan Tambahan (Opsional)</label>
                            <textarea id="message" name="message" rows="4"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Kirim Reservasi</button>
                    </form>
                </div>
            </div>
            <div class="map-container">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d991.4508883148923!2d106.73308276961265!3d-6.289532066573371!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f19179a47a4d%3A0xf1c7d216d86ecf95!2sAyam%20Raya!5e0!3m2!1sen!2sid!4v1756179173620!5m2!1sen!2sid" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
    </section>

    <footer id="main-footer">
        <div class="container">
            <p>&copy; 2025 Nama Restoran Anda. Hak Cipta Dilindungi.</p>
            <div class="footer-links">
                <a href="#">Kebijakan Privasi</a> | <a href="#">Syarat & Ketentuan</a>
            </div>
        </div>
    </footer>

    <script src="js/script.js"></script>
    <script src="https://kit.fontawesome.com/your-font-awesome-kit-id.js" crossorigin="anonymous"></script>
</body>
</html>