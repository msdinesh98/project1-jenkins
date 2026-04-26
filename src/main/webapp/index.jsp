<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>NexusShop | Premium E‑Commerce with Favorites</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700;14..32,800&family=Space+Grotesk:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --bg: #ffffff;
            --bg-secondary: #fafcff;
            --primary: #0a1c2f;
            --primary-soft: #1a2f44;
            --accent: #2b6e9f;
            --accent-light: #eef5fc;
            --accent-glow: rgba(43, 110, 159, 0.12);
            --muted: #5f6c84;
            --border-light: #eef2f8;
            --card-white: #ffffff;
            --shadow-sm: 0 12px 28px -8px rgba(0, 0, 0, 0.05), 0 0 0 1px rgba(0, 0, 0, 0.01);
            --shadow-md: 0 20px 35px -12px rgba(0, 0, 0, 0.08);
            --radius-xl: 32px;
            --radius-lg: 24px;
            --radius-md: 18px;
            --radius-sm: 14px;
            --transition: all 0.25s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            --favorite: #e85d5d;
            --favorite-bg: #fff0f0;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg-secondary);
            color: var(--primary);
            line-height: 1.45;
            scroll-behavior: smooth;
        }

        .container {
            max-width: 1280px;
            margin: 0 auto;
            padding: 0 28px;
        }

        /* Modern header */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.92);
            backdrop-filter: blur(16px);
            border-bottom: 1px solid var(--border-light);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 24px;
            padding: 14px 0;
            flex-wrap: wrap;
        }

        .brand {
            font-family: 'Space Grotesk', monospace;
            font-size: 1.7rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(130deg, #0a1c2f 0%, #2b6e9f 80%);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }
        .brand span.accent {
            background: linear-gradient(130deg, #2b6e9f, #4a9fd8);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
        }

        nav.main-nav ul {
            display: flex;
            gap: 6px;
            list-style: none;
        }
        nav.main-nav li a {
            display: inline-flex;
            align-items: center;
            gap: 8px;
            padding: 8px 20px;
            border-radius: 48px;
            font-weight: 500;
            font-size: 0.9rem;
            transition: var(--transition);
            color: var(--primary);
        }
        nav.main-nav li a:hover {
            background: var(--accent-light);
            color: var(--accent);
        }
        /* Favorites indicator in nav */
        .favorite-nav {
            position: relative;
        }
        .fav-indicator {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--favorite);
            color: white;
            font-size: 0.65rem;
            width: 16px;
            height: 16px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: 700;
        }

        .search {
            display: flex;
            align-items: center;
            background: white;
            border-radius: 56px;
            padding: 5px 5px 5px 20px;
            gap: 6px;
            min-width: 260px;
            border: 1px solid var(--border-light);
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }
        .search:focus-within {
            border-color: var(--accent);
            box-shadow: 0 0 0 3px var(--accent-glow);
        }
        .search input {
            background: transparent;
            border: none;
            outline: none;
            font-size: 0.9rem;
            width: 100%;
        }
        .icon-btn {
            background: transparent;
            border: none;
            cursor: pointer;
            font-size: 1.2rem;
            color: var(--primary);
            transition: var(--transition);
            padding: 8px;
            border-radius: 50%;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }
        .icon-btn:hover {
            background: var(--accent-light);
            color: var(--accent);
        }
        .cart {
            position: relative;
        }
        .cart-count {
            position: absolute;
            top: -4px;
            right: -4px;
            background: var(--accent);
            color: white;
            font-weight: 700;
            font-size: 0.7rem;
            width: 20px;
            height: 20px;
            border-radius: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .mobile-toggle {
            display: none;
            background: transparent;
            border: none;
            font-size: 1.5rem;
            cursor: pointer;
        }

        /* Hero */
        .hero {
            background: linear-gradient(112deg, #eef5fc 0%, #ffffff 100%);
            border-radius: 0 0 var(--radius-xl) var(--radius-xl);
            padding: 72px 20px 80px;
            text-align: center;
            margin-bottom: 8px;
        }
        .hero h1 {
            font-family: 'Space Grotesk', sans-serif;
            font-size: 3.6rem;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #0a1c2f, #2b6e9f);
            background-clip: text;
            -webkit-background-clip: text;
            color: transparent;
            margin-bottom: 18px;
        }
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 12px;
            padding: 12px 32px;
            border-radius: 48px;
            font-weight: 600;
            border: none;
            cursor: pointer;
            transition: var(--transition);
            font-size: 0.95rem;
        }
        .btn-primary {
            background: var(--primary);
            color: white;
            box-shadow: 0 4px 12px rgba(10, 28, 47, 0.12);
        }
        .btn-primary:hover {
            background: var(--accent);
            transform: translateY(-2px);
        }
        .btn-outline {
            background: transparent;
            border: 1px solid var(--border-light);
            color: var(--primary);
        }
        .section {
            padding: 70px 0 56px;
        }
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }
        .section-header h2 {
            font-size: 2.2rem;
            font-weight: 700;
            font-family: 'Space Grotesk', sans-serif;
        }

        /* Categories */
        .grid-categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
        }
        .cat-card {
            background: var(--card-white);
            border-radius: var(--radius-lg);
            padding: 26px 12px;
            text-align: center;
            cursor: pointer;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            box-shadow: var(--shadow-sm);
        }
        .cat-card:hover {
            transform: translateY(-5px);
            border-color: var(--accent);
        }
        .cat-icon {
            font-size: 2.2rem;
            color: var(--accent);
            margin-bottom: 14px;
        }

        /* Products grid */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 32px;
        }
        .product-card {
            background: var(--card-white);
            border-radius: var(--radius-md);
            overflow: hidden;
            transition: var(--transition);
            border: 1px solid var(--border-light);
            box-shadow: var(--shadow-sm);
            position: relative;
        }
        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: var(--shadow-md);
        }
        .product-img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: transform 0.4s ease;
        }
        .product-info {
            padding: 20px 18px 12px;
        }
        .product-title {
            font-weight: 700;
            font-size: 1.05rem;
        }
        .price-row {
            display: flex;
            align-items: baseline;
            gap: 8px;
            margin: 10px 0 6px;
        }
        .price-current {
            font-weight: 800;
            font-size: 1.4rem;
            color: var(--primary);
        }
        .price-old {
            font-size: 0.85rem;
            text-decoration: line-through;
            color: var(--muted);
        }
        .rating {
            color: #f5b342;
            font-size: 0.8rem;
            margin: 6px 0;
        }
        .product-actions {
            padding: 8px 18px 20px;
            display: flex;
            gap: 12px;
        }
        .add-cart {
            flex: 1;
            background: var(--primary);
            color: white;
            border: none;
            border-radius: 40px;
            padding: 12px;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
        }
        .add-cart:hover {
            background: var(--accent);
        }
        /* FAVORITE BUTTON STYLES */
        .fav-btn {
            width: 44px;
            background: var(--bg-secondary);
            border: 1px solid var(--border-light);
            border-radius: 40px;
            cursor: pointer;
            transition: var(--transition);
            color: var(--muted);
            font-size: 1.2rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .fav-btn.active {
            background: var(--favorite-bg);
            color: var(--favorite);
            border-color: var(--favorite);
        }
        .fav-btn:hover {
            transform: scale(1.02);
            background: #ffe6e6;
        }

        /* Favorites drawer (slide-out panel) */
        .favorites-drawer {
            position: fixed;
            top: 0;
            right: -420px;
            width: 400px;
            max-width: 90vw;
            height: 100vh;
            background: white;
            box-shadow: -8px 0 30px rgba(0,0,0,0.08);
            z-index: 1000;
            transition: right 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            display: flex;
            flex-direction: column;
            border-left: 1px solid var(--border-light);
        }
        .favorites-drawer.open {
            right: 0;
        }
        .drawer-header {
            padding: 24px 24px 16px;
            border-bottom: 1px solid var(--border-light);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        .drawer-header h3 {
            font-size: 1.4rem;
            font-weight: 600;
        }
        .close-drawer {
            background: none;
            border: none;
            font-size: 1.6rem;
            cursor: pointer;
            color: var(--muted);
        }
        .favorites-list {
            flex: 1;
            overflow-y: auto;
            padding: 16px;
            display: flex;
            flex-direction: column;
            gap: 16px;
        }
        .fav-item {
            display: flex;
            gap: 14px;
            background: var(--bg-secondary);
            border-radius: var(--radius-sm);
            padding: 12px;
            border: 1px solid var(--border-light);
            align-items: center;
        }
        .fav-item-img {
            width: 70px;
            height: 70px;
            object-fit: cover;
            border-radius: 12px;
        }
        .fav-item-info {
            flex: 1;
        }
        .fav-item-title {
            font-weight: 600;
        }
        .fav-item-price {
            font-weight: 700;
            color: var(--accent);
        }
        .remove-fav {
            background: none;
            border: none;
            color: var(--muted);
            cursor: pointer;
            font-size: 1.2rem;
            padding: 8px;
            border-radius: 50%;
        }
        .remove-fav:hover {
            color: var(--favorite);
            background: var(--favorite-bg);
        }
        .drawer-footer {
            padding: 20px;
            border-top: 1px solid var(--border-light);
        }
        .empty-fav-msg {
            text-align: center;
            color: var(--muted);
            padding: 40px 20px;
        }
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0,0,0,0.3);
            backdrop-filter: blur(3px);
            z-index: 999;
            opacity: 0;
            visibility: hidden;
            transition: all 0.2s;
        }
        .overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .deal-card {
            display: flex;
            flex-wrap: wrap;
            background: linear-gradient(125deg, #ffffff, #f8fafd);
            border-radius: var(--radius-xl);
            overflow: hidden;
            box-shadow: var(--shadow-md);
        }
        .timer {
            display: flex;
            gap: 14px;
            margin: 28px 0;
        }
        .time-box {
            background: var(--primary);
            color: white;
            border-radius: 20px;
            padding: 12px 18px;
            text-align: center;
            min-width: 70px;
        }
        .testimonials-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding-bottom: 20px;
        }
        .testimonial-item {
            min-width: 320px;
            background: white;
            border-radius: var(--radius-lg);
            padding: 28px;
            border: 1px solid var(--border-light);
        }
        .newsletter-block {
            background: var(--primary);
            border-radius: var(--radius-xl);
            padding: 58px 32px;
            text-align: center;
            color: white;
        }
        .newsletter-form {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 28px;
        }
        .newsletter-form input {
            padding: 14px 24px;
            border-radius: 60px;
            border: none;
            width: 300px;
        }
        footer {
            background: white;
            border-top: 1px solid var(--border-light);
            margin-top: 40px;
            padding: 48px 0 32px;
        }
        @media (max-width: 880px) {
            nav.main-nav { display: none; }
            .mobile-toggle { display: inline-block; }
            .hero h1 { font-size: 2.5rem; }
        }
        @media (max-width: 600px) {
            .products-grid { grid-template-columns: 1fr; }
            .favorites-drawer { width: 100%; right: -100%; }
        }
        .toast-notification {
            position: fixed;
            bottom: 28px;
            left: 50%;
            transform: translateX(-50%);
            background: #1f2f3e;
            color: white;
            padding: 12px 24px;
            border-radius: 60px;
            z-index: 1100;
            pointer-events: none;
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display:flex; align-items:center; gap:20px;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
                <a class="brand" href="#">Nexus<span class="accent">Shop</span></a>
            </div>
            <nav class="main-nav">
                <ul>
                    <li><a href="#"><i class="fas fa-compass"></i> Discover</a></li>
                    <li><a href="#" id="catMenuBtn"><i class="fas fa-grid-2"></i> Categories</a></li>
                    <li><a href="#deals"><i class="fas fa-bolt"></i> Flash Sale</a></li>
                    <li><a href="#" id="openFavDrawerBtn" class="favorite-nav"><i class="far fa-heart"></i> Favorites <span id="favCountBadge" class="fav-indicator" style="display:none;">0</span></a></li>
                </ul>
            </nav>
            <div style="display:flex; align-items:center; gap:12px;">
                <div class="search">
                    <input type="text" id="searchInput" placeholder="Search premium products...">
                    <button class="icon-btn" id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="header-actions" style="display:flex; gap:6px;">
                    <a class="icon-btn" href="#"><i class="far fa-user"></i></a>
                    <a class="cart" href="#" id="cartBtn">
                        <i class="fas fa-bag-shopping"></i>
                        <span class="cart-count" id="cartCount">0</span>
                    </a>
                </div>
            </div>
        </div>
        <div id="mobileMenu" style="display:none; background:white; border-top:1px solid #eef2f8;">
            <div class="container" style="padding:18px 0; display:flex; flex-direction:column; gap:12px;">
                <a href="#">Discover</a><a href="#">Categories</a><a href="#deals">Flash Sale</a><a href="#" id="mobileFavLink">Favorites ❤️</a>
            </div>
        </div>
    </header>

    <main>
        <section class="hero">
            <div class="container">
                <h1>Timeless style,<br>premium quality</h1>
                <p>Curated essentials — save your favorites & enjoy effortless shopping</p>
                <div style="display:flex; gap:16px; justify-content:center; flex-wrap:wrap;">
                    <button class="btn btn-primary" id="shopNow">Shop Collection <i class="fas fa-arrow-right"></i></button>
                    <button class="btn btn-outline" id="exploreDeals">Explore Deals <i class="fas fa-tag"></i></button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="section-header"><h2>Shop by category</h2><p>Discover what suits your taste</p></div>
            <div class="grid-categories" id="categoriesGrid"></div>
        </section>

        <section class="section container">
            <div class="section-header"><h2>Editor's pick</h2><p>Save your favorites ❤️</p></div>
            <div class="products-grid" id="productsGrid"></div>
        </section>

        <section id="deals" class="section container">
            <div class="section-header"><h2>Limited drop</h2><p>24h exclusive pricing</p></div>
            <div class="deal-card">
                <div class="deal-img"><img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=80" alt="MacBook Air M2"></div>
                <div class="deal-content">
                    <h3 style="font-size:1.8rem;">MacBook Air M2</h3>
                    <div class="timer"><div class="time-box"><div id="dealDays">0</div><div>Days</div></div><div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div><div class="time-box"><div id="dealMinutes">00</div><div>Mins</div></div><div class="time-box"><div id="dealSeconds">00</div><div>Secs</div></div></div>
                    <div><span class="price-current" style="font-size:2rem;">$999</span> <span class="price-old">$1,199</span> <span style="background:#eef2fa; padding:6px 14px; border-radius:40px;">save 17%</span></div>
                    <button class="btn btn-primary" id="buyDeal" style="margin-top:28px;">Add to cart</button>
                </div>
            </div>
        </section>

        <section class="section container">
            <div class="section-header"><h2>Trusted by creators</h2></div>
            <div class="testimonials-scroll"><div class="testimonial-item">★★★★★ <p>"Incredible quality"</p><strong>Sophia C.</strong></div><div class="testimonial-item">★★★★☆ <p>"Fast delivery"</p><strong>Marcus V.</strong></div></div>
        </section>

        <section class="section container">
            <div class="newsletter-block"><h3 style="font-size:1.8rem;">Join the inner circle</h3><p>Exclusive access & early sales</p>
            <form id="newsletterForm" class="newsletter-form" onsubmit="return false;"><input type="email" id="newsletterEmail" placeholder="Your email"><button class="btn btn-primary" id="subscribeBtn" style="background:white; color:#0a1c2f;">Subscribe</button></form>
            <div id="newsletterMsg" style="margin-top:14px;"></div></div>
        </section>
    </main>

    <footer><div class="container" style="display:flex; justify-content:space-between; flex-wrap:wrap;"><div><strong>NexusShop</strong><div class="muted">Minimalist · Premium</div></div><div>© <span id="year"></span> NexusShop</div></div></footer>

    <!-- Favorites Drawer -->
    <div class="overlay" id="drawerOverlay"></div>
    <div class="favorites-drawer" id="favoritesDrawer">
        <div class="drawer-header"><h3><i class="far fa-heart" style="color:var(--favorite);"></i> My Favorites</h3><button class="close-drawer" id="closeDrawerBtn">&times;</button></div>
        <div class="favorites-list" id="favoritesList"><div class="empty-fav-msg">Your favorites list is empty.<br>❤️ Click the heart on any product.</div></div>
        <div class="drawer-footer"><button class="btn btn-primary" id="clearAllFavs" style="width:100%; background:#eef2fa; color:var(--primary);">Clear all favorites</button></div>
    </div>

    <script>
        // ----- DATA -----
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-screen' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
            { id: 'clothing', name: 'Clothing', icon: 'fa-shirt' },
            { id: 'gadgets', name: 'Audio', icon: 'fa-headphones' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
            { id: 'accessories', name: 'Watches', icon: 'fa-clock' }
        ];
        const PRODUCTS = [
            { id: 1, title: 'iPhone 15 Pro', price: 1199, oldPrice: 1299, rating: 5, reviews: 210, img: 'https://images.unsplash.com/photo-1695048133142-1a20484d2569?auto=format&fit=crop&w=600&q=80', category: 'phones' },
            { id: 2, title: 'MacBook Pro 14"', price: 1999, oldPrice: 2199, rating: 5, reviews: 98, img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'laptops' },
            { id: 3, title: 'Minimalist Watch', price: 249, oldPrice: 329, rating: 4, reviews: 156, img: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 4, title: 'Leather Backpack', price: 189, oldPrice: 279, rating: 5, reviews: 87, img: 'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80', category: 'accessories' },
            { id: 5, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 203, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'gadgets' },
            { id: 6, title: 'Ceramic Mug Set', price: 45, oldPrice: 68, rating: 4, reviews: 44, img: 'https://images.unsplash.com/photo-1514228742587-6b1558fcca3d?auto=format&fit=crop&w=600&q=80', category: 'accessories' }
        ];

        let cartCount = 0;
        let favorites = new Map(); // id -> product object

        // DOM elements
        const cartCountEl = document.getElementById('cartCount');
        const productsGrid = document.getElementById('productsGrid');
        const categoriesGrid = document.getElementById('categoriesGrid');
        const searchInput = document.getElementById('searchInput');
        const favoritesListEl = document.getElementById('favoritesList');
        const favCountBadge = document.getElementById('favCountBadge');
        const drawer = document.getElementById('favoritesDrawer');
        const overlay = document.getElementById('drawerOverlay');

        function updateFavUI() {
            const count = favorites.size;
            if(count > 0) { favCountBadge.style.display = 'flex'; favCountBadge.innerText = count; } 
            else { favCountBadge.style.display = 'none'; }
            renderFavoritesDrawer();
            // re-render products to update heart icons
            renderProducts(getFilteredProducts());
        }

        function getFilteredProducts() {
            const query = searchInput.value.trim().toLowerCase();
            if(!query) return [...PRODUCTS];
            return PRODUCTS.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
        }

        function toggleFavorite(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if(!product) return;
            if(favorites.has(productId)) {
                favorites.delete(productId);
                showToast(`♡ Removed ${product.title} from favorites`);
            } else {
                favorites.set(productId, product);
                showToast(`❤️ ${product.title} added to favorites`);
            }
            updateFavUI();
        }

        function renderProducts(productsArray) {
            productsGrid.innerHTML = '';
            productsArray.forEach(p => {
                const isFav = favorites.has(p.id);
                const card = document.createElement('div');
                card.className = 'product-card';
                card.innerHTML = `
                    <img class="product-img" src="${p.img}" alt="${p.title}">
                    <div class="product-info">
                        <div class="product-title">${escapeHtml(p.title)}</div>
                        <div class="price-row"><span class="price-current">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
                        <div class="rating">${'★'.repeat(Math.round(p.rating))} (${p.reviews})</div>
                    </div>
                    <div class="product-actions">
                        <button class="add-cart" data-id="${p.id}"><i class="fas fa-bag-shopping"></i> Add</button>
                        <button class="fav-btn ${isFav ? 'active' : ''}" data-fav-id="${p.id}"><i class="fas fa-heart"></i></button>
                    </div>
                `;
                productsGrid.appendChild(card);
            });
            document.querySelectorAll('.add-cart').forEach(btn => {
                btn.addEventListener('click', (e) => { const id = parseInt(btn.dataset.id); addToCart(id); });
            });
            document.querySelectorAll('.fav-btn').forEach(btn => {
                btn.addEventListener('click', (e) => { e.stopPropagation(); const id = parseInt(btn.dataset.favId); toggleFavorite(id); });
            });
        }

        function renderFavoritesDrawer() {
            if(!favoritesListEl) return;
            if(favorites.size === 0) {
                favoritesListEl.innerHTML = '<div class="empty-fav-msg">✨ Your favorites list is empty.<br>Click the heart on any product.</div>';
                return;
            }
            favoritesListEl.innerHTML = '';
            Array.from(favorites.values()).forEach(prod => {
                const div = document.createElement('div');
                div.className = 'fav-item';
                div.innerHTML = `
                    <img class="fav-item-img" src="${prod.img}" alt="${prod.title}">
                    <div class="fav-item-info"><div class="fav-item-title">${escapeHtml(prod.title)}</div><div class="fav-item-price">$${prod.price}</div></div>
                    <button class="remove-fav" data-remove-id="${prod.id}"><i class="fas fa-trash-alt"></i></button>
                `;
                favoritesListEl.appendChild(div);
            });
            document.querySelectorAll('.remove-fav').forEach(btn => {
                btn.addEventListener('click', (e) => { const id = parseInt(btn.dataset.removeId); favorites.delete(id); updateFavUI(); showToast('Removed from favorites'); });
            });
        }

        function addToCart(pid) {
            const product = PRODUCTS.find(p => p.id === pid);
            if(!product) return;
            cartCount++;
            cartCountEl.textContent = cartCount;
            showToast(`✓ ${product.title} added to cart`);
            const btn = document.querySelector(`.add-cart[data-id="${pid}"]`);
            if(btn) { const orig = btn.innerHTML; btn.innerHTML = '<i class="fas fa-check"></i> Added'; btn.disabled = true; setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1000); }
        }

        function showToast(msg) { let t = document.createElement('div'); t.className = 'toast-notification'; t.innerText = msg; document.body.appendChild(t); setTimeout(() => t.remove(), 2000); }
        function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){ if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }
        function filterProducts() { renderProducts(getFilteredProducts()); }

        function openDrawer() { drawer.classList.add('open'); overlay.classList.add('active'); }
        function closeDrawer() { drawer.classList.remove('open'); overlay.classList.remove('active'); }

        // render categories
        function renderCategories() {
            categoriesGrid.innerHTML = '';
            CATEGORIES.forEach(cat => {
                const card = document.createElement('div'); card.className = 'cat-card';
                card.innerHTML = `<div class="cat-icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4>`;
                card.addEventListener('click', () => { searchInput.value = cat.name; filterProducts(); window.scrollTo({ top: productsGrid.offsetTop - 90, behavior: 'smooth' }); });
                categoriesGrid.appendChild(card);
            });
        }

        // Deal timer
        function setupTimer() {
            const target = new Date(Date.now() + 25 * 3600000 + 15 * 60000);
            setInterval(() => {
                const diff = target - new Date();
                if(diff <= 0) return;
                document.getElementById('dealDays').innerText = Math.floor(diff / 86400000);
                document.getElementById('dealHours').innerText = String(Math.floor((diff % 86400000) / 3600000)).padStart(2,'0');
                document.getElementById('dealMinutes').innerText = String(Math.floor((diff % 3600000) / 60000)).padStart(2,'0');
                document.getElementById('dealSeconds').innerText = String(Math.floor((diff % 60000) / 1000)).padStart(2,'0');
            }, 1000);
        }

        // Event listeners
        document.getElementById('searchBtn').addEventListener('click', filterProducts);
        searchInput.addEventListener('keydown', (e) => { if(e.key === 'Enter') filterProducts(); });
        document.getElementById('openFavDrawerBtn').addEventListener('click', (e) => { e.preventDefault(); openDrawer(); });
        document.getElementById('closeDrawerBtn').addEventListener('click', closeDrawer);
        overlay.addEventListener('click', closeDrawer);
        document.getElementById('clearAllFavs').addEventListener('click', () => { if(favorites.size) { favorites.clear(); updateFavUI(); showToast('All favorites cleared'); } else showToast('No favorites to clear'); });
        document.getElementById('shopNow').addEventListener('click', () => window.scrollTo({ top: productsGrid.offsetTop - 70, behavior: 'smooth' }));
        document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
        document.getElementById('buyDeal').addEventListener('click', () => { cartCount++; cartCountEl.textContent = cartCount; showToast('MacBook Air added to cart'); });
        document.getElementById('newsletterForm').addEventListener('submit', (e) => { e.preventDefault(); const email = document.getElementById('newsletterEmail').value.trim(); const msgDiv = document.getElementById('newsletterMsg'); if(!email.includes('@')) { msgDiv.innerText = 'Valid email required'; setTimeout(()=> msgDiv.innerText='',2000); return; } msgDiv.innerText = '✨ Subscribed!'; document.getElementById('newsletterEmail').value = ''; setTimeout(()=> msgDiv.innerText='',2500); });
        const mobileToggle = document.getElementById('mobileToggle'), mobileMenu = document.getElementById('mobileMenu');
        mobileToggle.addEventListener('click', () => { mobileMenu.style.display = mobileMenu.style.display === 'none' ? 'block' : 'none'; });
        document.getElementById('mobileFavLink')?.addEventListener('click', (e) => { e.preventDefault(); openDrawer(); mobileMenu.style.display = 'none'; });
        document.getElementById('catMenuBtn')?.addEventListener('click', (e) => { e.preventDefault(); alert('✨ Click on category tiles to filter products'); });

        renderCategories();
        renderProducts(PRODUCTS);
        updateFavUI();
        setupTimer();
        document.getElementById('year').innerText = new Date().getFullYear();
    </script>
</body>
</html>
