<template>
  <div class="container">
    <div class="header">
      <img src="/iimb-demo/img/iimb-logo.svg" alt="Logo" class="logo" />
      <h2 class="header__brand">Studio Topophilia</h2>
      <p class="header__tag">
        Forge connections with places through their everyday heritage and
        unscripted place - stories
      </p>
    </div>

    <div class="space"></div>
    <div class="space"></div>

    <div class="nav">
      <nuxt-link to="/whitefield" class="bold">
        Experience
        <div class="nav__menu">
          <nuxt-link to="/whitefield"
            ><i class="fas fa-map-marked-alt"></i> Location</nuxt-link
          >
          <a href="#"><i class="fas fa-child"></i> Character</a>
          <a href="#"><i class="fas fa-book-open"></i> Story</a>
          <a href="#"><i class="fas fa-clock"></i> Timeline</a>
          <a href="#"><i class="fas fa-image"></i> Image</a>
          <a href="#"><i class="fas fa-film"></i> Video</a>
        </div>
      </nuxt-link>
      <a href="#">Do More</a>
      <a href="#">Our Story</a>
      <a href="#">Out Inspiration</a>
    </div>

    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>

    <nuxt />

    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>
    <div class="space"></div>

    <div class="footer">
      <div class="footer__action">
        <a href="#" class="button button--primary button--large">
          Get in Touch
        </a>
      </div>

      <div class="footer__links">
        <a href="#">Instagram</a> | <a href="#">info@studiotopophilia.in</a> |
        <a href="#">+91 99721 14110</a>
      </div>

      <div class="footer__copyright">
        Copyright &copy; Studio Topophilia, Bengaluru, 2020 |
        <a href="#">Privacy Policy</a> |
        <a href="#">Terms &amp; Conditions</a> |
        <a href="#">Cancellation/Refunds Policies</a>
      </div>
    </div>
  </div>
</template>

<style lang="scss">
.header {
  align-items: center;
  background-color: #f4f6eb;
  border-radius: 0.8rem;
  display: flex;
  flex-direction: column;
  padding: 1.2rem;

  & > * {
    margin-bottom: 1.2rem;

    &:last-child {
      margin-bottom: 0;
    }
  }

  img {
    border-radius: 0.4rem;
  }

  h2 {
    font-weight: 400;
  }

  p {
  }
}

.nav {
  margin: 0 -1.6rem;

  & > a {
    display: inline-block;
    color: #555;
    font-size: 1.8rem;
    font-weight: 400;
    padding: 0.8rem 1.6rem;
    position: relative;

    &.nuxt-link-active {
      font-weight: 600;
    }

    &:hover {
      color: #333;
    }

    & > .nav__menu {
      background-color: $color-white;
      border-radius: 0.8rem;
      border-top: $color-secondary 2px solid;
      display: none;
      left: 1.6rem;
      padding: 1.2rem;
      position: absolute;
      top: 100%;
      width: 18rem;
      z-index: 1000;
    }

    &:hover > .nav__menu {
      display: block;

      a {
        color: $color-primary;
        display: block;
        font-size: 1.8rem;
        font-weight: 400;
        padding: 0.8rem 1.6rem;

        &:hover {
          color: $color-link;
        }

        i {
          width: 2.4rem;
        }
      }
    }
  }
}

.footer {
  text-align: center;

  & > * {
    margin-bottom: 1.2rem;

    &:last-child {
      margin-bottom: 0;
    }
  }

  &__links {
  }

  &__copyright {
    font-size: 1.2rem;
  }
}

.logo {
  width: 12rem;
}
</style>
