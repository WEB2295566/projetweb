{{ include('header.php', {title: 'Stampee'}) }}
    <body>
    <section class="section-hero">
      <div class="hero">
        <div class="hero-text-box">
          <h1 class="heading-primary">Élargissez votre collection de timbres d'une manière exceptionnelle dès maintenant
          </h1>
          <a href="#" class="btn">Encheres</a>
        </div>
        <div class="hero-img-box">
          <img src="./assets/img/hero2.avif" class="hero-img" alt="collections de timbre, outils de philateiste">
        </div>
      </div>
    </section>

    <div class="product-similar-container">
      <h2 class="heading-tertiary">Encheres a venir:</h2>
      <div class="product-similar">
        <div class="product-card">
          <img src="./assets/img/timbre/timbre_14.webp" alt="" class="product-card-img">
          <div class="product-details">
            <a href="">CA STAMPS #532 - 1913 £1 canadian goose, SG 404, neat oval Registered datestamp.</a>
            <p>Lot: 1630</p>
          </div>
        </div>
        <div class="product-card">
          <img src="./assets/img/timbre/timbre_18.webp" alt="" class="product-card-img">
          <div class="product-details">
            <a href="">CA STAMPS #532 - 1913 £1 canadian goose, SG 404, neat oval Registered datestamp.</a>
            <p>Lot: 1630</p>
          </div>
        </div>
        <div class="product-card">
          <img src="./assets/img/timbre/timbre_16.webp" alt="" class="product-card-img">
          <div class="product-details">
            <a href="">CA STAMPS #532 - 1913 £1 canadian goose, SG 404, neat oval Registered datestamp.</a>
            <p>Lot: 1630</p>
          </div>
        </div>
        <div class="product-card">
          <img src="./assets/img/timbre/timbre_17.webp" alt="" class="product-card-img">
          <div class="product-details">
            <a href="">CA STAMPS #532 - 1913 £1 canadian goose, SG 404, neat oval Registered datestamp.</a>
            <p>Lot: 1630</p>
          </div>
        </div>
      </div>
    </div>

    <section class="section-lord">
      <div class="container grid grid--2-cols grid--center-v">
        <div class="lord-text-box">
          <h3 class="heading-tertiary">Biographie du lord Stampee</h3>
          <p class="lord-description">Lord Reginald Stampee, Duc de Worcestershear, est une personnalité de renom dans
            le
            domaine de la philatélie
            britannique. Il est né en 1945 au sein d'une famille aristocratique et a découvert sa passion pour les
            timbres
            dès son plus jeune âge, grâce à son grand-père qui lui a offert sa première collection de timbres.</p><a
            href="" class="more-info">plus d'info</a>
        </div>
        <div class="step-img-box">
          <img src="./assets/img/lord.avif" alt="" class="lord-img">
        </div>

      </div>
    </section>

    <section class="section-featured">
      <div class="container">
        <h2 class="heading-featured-in">Mis en avant dans</h2>
        <div class="logos">
          <img src="./assets/img/logos/london.webp" alt="london logo">
          <img src="./assets/img/logos/times.webp" alt="Business Insider logo">
          <img src="./assets/img/logos/forbes.webp" alt="forbes logo">
          <img src="./assets/img/logos/usa-today.webp" alt="usa today">
          <img src="./assets/img/logos/business-insider.webp" alt="Business Insider logo">
        </div>
      </div>
    </section>

    <section class="section-cta">
      <div class="container">
        <div class="cta">
          <div class="cta-text-box">
            <h2 class="heading-secondary"> Creez votre compte ci-dessous</h2>
            <p class="cta-text">
              Explorez la passion des timbres avec Lord Reginald Stampee, Duc de
              Worcestershear. Né dans la noblesse, sa collection a commencé avec un cadeau de son grand-père.
              Joignez-vous
              à nous pour découvrir ce monde fascinant.
            </p>

            <form class="cta-form" action="#">
              <div>
                <label for="full-name">Nom Complet</label>
                <input id="full-name" type="text" placeholder="Marc andre" required>
              </div>

              <div>
                <label for="email">Adresse email</label>
                <input id="email" type="email" placeholder="me@example.com" required>
              </div>

              <div>
                <label for="select-where">D'où avez-vous entendu parler de nous ?</label>
                <select id="select-where" required>
                  <option value="">Veuillez choisir une option :</option>
                  <option value="friends">Amis et familles</option>
                  <option value="youtube">Video Youtube</option>
                  <option value="podcast">Podcast</option>
                  <option value="ad">Facebook ad</option>
                  <option value="others">Autres</option>
                </select>
              </div>

              <button class="btn btn--form">Collectionnez maintenant</button>

            </form>
          </div>
          <div class="cta-img-box" role="img" aria-label="collection de timbre"></div>
        </div>
      </div>
    </section>
    </body>
</html>