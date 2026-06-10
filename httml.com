<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Agro Forte Sustentável</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Poppins',sans-serif;
    scroll-behavior:smooth;
}

body{
    background:#f5f7f2;
    color:#333;
}

/* MENU */

header{
    position:fixed;
    width:100%;
    top:0;
    z-index:1000;
    background:rgba(0,0,0,0.75);
    backdrop-filter:blur(10px);
}

nav{
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:20px 8%;
}

.logo{
    color:#fff;
    font-size:1.7rem;
    font-weight:700;
}

.logo span{
    color:#6DFF72;
}

nav ul{
    display:flex;
    list-style:none;
    gap:25px;
}

nav a{
    color:white;
    text-decoration:none;
    transition:.3s;
}

nav a:hover{
    color:#6DFF72;
}

/* HERO */

.hero{
    height:100vh;
    background:
    linear-gradient(rgba(0,0,0,.5),
    rgba(0,0,0,.6)),
    url("https://images.unsplash.com/photo-1500937386664-56d1dfef3854");
    background-size:cover;
    background-position:center;
    background-attachment:fixed;

    display:flex;
    justify-content:center;
    align-items:center;
    text-align:center;
    color:white;
}

.hero-content{
    max-width:900px;
    animation:fadeUp 1.5s ease;
}

.hero h1{
    font-size:4rem;
    margin-bottom:20px;
}

.hero span{
    color:#7CFF81;
}

.hero p{
    font-size:1.2rem;
    margin-bottom:30px;
}

.btn{
    display:inline-block;
    padding:15px 35px;
    background:#2e7d32;
    color:white;
    border-radius:40px;
    text-decoration:none;
    transition:.4s;
}

.btn:hover{
    background:#1b5e20;
    transform:translateY(-5px);
}

/* SEÇÕES */

section{
    padding:100px 8%;
}

.titulo{
    text-align:center;
    font-size:2.8rem;
    margin-bottom:50px;
    color:#2e7d32;
}

.titulo::after{
    content:'';
    display:block;
    width:120px;
    height:4px;
    background:#4CAF50;
    margin:15px auto;
}

/* SOBRE */

.sobre{
    display:grid;
    grid-template-columns:1fr 1fr;
    gap:50px;
    align-items:center;
}

.sobre img{
    width:100%;
    border-radius:20px;
    box-shadow:0 15px 30px rgba(0,0,0,.2);
}

.sobre h3{
    color:#2e7d32;
    margin-bottom:20px;
    font-size:2rem;
}

/* CARDS */

.cards{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(280px,1fr));
    gap:30px;
}

.card{
    background:white;
    padding:35px;
    border-radius:20px;
    text-align:center;
    transition:.4s;
    box-shadow:0 5px 20px rgba(0,0,0,.08);
}

.card:hover{
    transform:translateY(-12px);
}

.card .icon{
    font-size:3rem;
    margin-bottom:20px;
}

.card h3{
    color:#2e7d32;
    margin-bottom:15px;
}

/* NÚMEROS */

.numeros{
    background:linear-gradient(135deg,#2e7d32,#1b5e20);
    color:white;
}

.stats{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(200px,1fr));
    gap:30px;
}

.stat{
    text-align:center;
}

.stat h2{
    font-size:4rem;
}

.stat p{
    font-size:1.1rem;
}

/* GALERIA */

.galeria{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(300px,1fr));
    gap:20px;
}

.galeria img{
    width:100%;
    height:250px;
    object-fit:cover;
    border-radius:15px;
    transition:.5s;
}

.galeria img:hover{
    transform:scale(1.05);
}

/* CONTATO */

.contato{
    background:#eef7ea;
}

.form{
    max-width:700px;
    margin:auto;
}

.form input,
.form textarea{
    width:100%;
    padding:15px;
    margin:10px 0;
    border:none;
    border-radius:10px;
    background:white;
    box-shadow:0 3px 10px rgba(0,0,0,.1);
}

.form button{
    width:100%;
    padding:15px;
    border:none;
    background:#2e7d32;
    color:white;
    border-radius:10px;
    cursor:pointer;
    font-size:1rem;
}

.form button:hover{
    background:#1b5e20;
}

/* FOOTER */

footer{
    background:#111;
    color:white;
    text-align:center;
    padding:30px;
}

/* ANIMAÇÃO */

@keyframes fadeUp{
    from{
        opacity:0;
        transform:translateY(50px);
    }
    to{
        opacity:1;
        transform:translateY(0);
    }
}

@media(max-width:900px){

.sobre{
    grid-template-columns:1fr;
}

.hero h1{
    font-size:2.5rem;
}

}

</style>
</head>

<body>

<header>
<nav>
<div class="logo">Agro<span>Forte</span></div>

<ul>
<li><a href="#sobre">Sobre</a></li>
<li><a href="#praticas">Práticas</a></li>
<li><a href="#impacto">Impacto</a></li>
<li><a href="#galeria">Galeria</a></li>
<li><a href="#contato">Contato</a></li>
</ul>
</nav>
</header>

<section class="hero">
<div class="hero-content">
<h1>Agro <span>Forte Sustentável</span></h1>
<p>
Tecnologia, produtividade e preservação ambiental trabalhando juntas
para alimentar o mundo e proteger o futuro.
</p>

<a href="#sobre" class="btn">Explorar Projeto</a>
</div>
</section>

<section id="sobre">

<h2 class="titulo">Quem Somos</h2>

<div class="sobre">

<img src="https://images.unsplash.com/photo-1464226184884-fa280b87c399">

<div>

<h3>Produção com Responsabilidade</h3>

<p>
O Agro Forte Sustentável promove práticas agrícolas modernas que
aumentam a produtividade sem comprometer os recursos naturais.
Nosso objetivo é integrar inovação, sustentabilidade e desenvolvimento rural.
</p>

<br>

<p>
Acreditamos que o futuro do agronegócio depende do equilíbrio entre
crescimento econômico, conservação ambiental e bem-estar social.
</p>

</div>

</div>

</section>

<section id="praticas">

<h2 class="titulo">Práticas Sustentáveis</h2>

<div class="cards">

<div class="card">
<div class="icon">🌱</div>
<h3>Plantio Inteligente</h3>
<p>Rotação de culturas e preservação da fertilidade do solo.</p>
</div>

<div class="card">
<div class="icon">💧</div>
<h3>Irrigação Eficiente</h3>
<p>Economia de água com monitoramento digital.</p>
</div>

<div class="card">
<div class="icon">☀️</div>
<h3>Energia Solar</h3>
<p>Redução de custos e menor impacto ambiental.</p>
</div>

<div class="card">
<div class="icon">🚜</div>
<h3>Agricultura 4.0</h3>
<p>Uso de drones, sensores e inteligência de dados.</p>
</div>

</div>

</section>

<section id="impacto" class="numeros">

<h2 class="titulo" style="color:white;">
Impactos Positivos
</h2>

<div class="stats">

<div class="stat">
<h2>85%</h2>
<p>Economia de Água</p>
</div>

<div class="stat">
<h2>70%</h2>
<p>Redução de Emissões</p>
</div>

<div class="stat">
<h2>150+</h2>
<p>Produtores Beneficiados</p>
</div>

<div class="stat">
<h2>100%</h2>
<p>Compromisso Ambiental</p>
</div>

</div>

</section>

<section id="galeria">

<h2 class="titulo">Galeria do Campo</h2>

<div class="galeria">

<img src="https://images.unsplash.com/photo-1500937386664-56d1dfef3854">
<img src="https://images.unsplash.com/photo-1464226184884-fa280b87c399">
<img src="https://images.unsplash.com/photo-1506744038136-46273834b3fb">
<img src="https://images.unsplash.com/photo-1500382017468-9049fed747ef">

</div>

</section>

<section id="contato" class="contato">

<h2 class="titulo">Entre em Contato</h2>

<form class="form">

<input type="text" placeholder="Seu nome">

<input type="email" placeholder="Seu e-mail">

<textarea rows="6" placeholder="Digite sua mensagem"></textarea>

<button type="submit">Enviar Mensagem</button>

</form>

</section>

<footer>
<h3>🌱 Agro Forte Sustentável</h3>
<p>Produzir hoje preservando o amanhã.</p>
<p>© 2026 - Projeto Educacional</p>
</footer>

</body>
</html>
