<script setup lang="ts">
import {RouterLink, RouterView} from 'vue-router'

const source = import.meta.env.VITE_SOURCE_CODE
const uni = import.meta.env.VITE_UNI
const fdiba_url = import.meta.env.VITE_FDIBA
const fdiba_facebook = import.meta.env.VITE_FDIBA_FACEBOOK
const fdiba_instagram = import.meta.env.VITE_FDIBA_INSTAGRAM
const fdiba_linkedin = import.meta.env.VITE_FDIBA_LINKEDIN
const year = (new Date()).getFullYear()
</script>

<template>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: var(--color-background-mute)">
      <div class="container-fluid">
        <RouterLink to="/" class="navbar-brand">
          <img alt="FDIBA logo" class="logo" src="../src/assets/fdiba-logo-white.png"
               width="125" height="43"/></RouterLink>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                 aria-expanded="false">
                Dropdown
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li>
                  <hr class="dropdown-divider">
                </li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
            <li class="nav-item">
              <RouterLink to="/login" class="nav-link">
                Login
              </RouterLink>
            </li>
            <li class="nav-item">
              <RouterLink to="/about" class="nav-link">
                About
              </RouterLink>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <RouterView/>
  <footer class="text-center text-lg-start text-muted mt-auto">
    <section class="w-100">
      <div class="d-flex flex-nowrap justify-content-center border-top text-lg-start">
        <div class="row d-flex flex-nowrap mt-4" style="width: 85%">
          <div class="col-md-3 col-lg-4 col-xl-4 mx-auto mb-4 text-center">
            <h6 class="text-uppercase fw-bold mb-4">
              <i class=""></i>Get connected with us on social networks:
            </h6>
            <div>
              <a :href="fdiba_facebook" class="me-4 text-reset">
                <i class="bi bi-facebook" style="color: var(--vt-c-black-mute)"></i>
              </a>
              <a :href="fdiba_instagram" class="me-4 text-reset">
                <i class="bi bi-instagram" style="color: var(--vt-c-black-mute)"></i>
              </a>
              <a :href="fdiba_linkedin" class="me-4 text-reset">
                <i class="bi bi-linkedin" style="color: var(--vt-c-black-mute)"></i>
              </a>
              <a class="me-4 text-reset align-items-center"
                 title="en:User:Cameltrader, CC BY-SA 3.0 &lt;http://creativecommons.org/licenses/by-sa/3.0/&gt;, via Wikimedia Commons"
                 :href="uni"
                 target="_blank">
                <img width="16"
                     alt="Tu-sofia-logo"
                     src="../src/assets/Tu-sofia-logo.svg">
              </a>
              <a :href="fdiba_url"
                 target="_blank"
                 class="me-4 text-reset align-items-center">
                <img width="16"
                     alt="fdiba-logo-black"
                     src="../src/assets/fdiba-logo-black.png">
              </a>
              <a :href="source" target="_blank" class="me-4 text-reset">
                <i class="bi bi-github" style="color: var(--vt-c-black-mute)"></i>
              </a>
            </div>
          </div>
          <div class="col-md-3 col-lg-4 col-xl-4 mx-auto mb-4 ms-4 me-4 text-center">
            <h6 class="text-uppercase fw-bold mb-4">
              Useful links
            </h6>
            <p>
              <a href="#!" class="text-reset">Link 1</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Link 2</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Link 3</a>
            </p>
            <p>
              <a href="#!" class="text-reset">Link 4</a>
            </p>
          </div>
          <div class="col-md-3 col-lg-4 col-xl-4 mx-auto mb-4 text-start">
            <h6 class="text-uppercase fw-bold mb-4">Contact</h6>
            <p><i class="bi bi-house-fill me-3"></i>TU Sofia, FDIBA<br>
              blvd. St. Kliment Ohridski 8<br>
              Block 10, 2. Floor<br>
              Sofia 1756
            </p>
            <p>
              <i class="bi bi-envelope-at-fill me-3"></i>
              <a href="mailto:contact@fdiba.tu-sofia.bg">contact@fdiba.tu-sofia.bg</a>
            </p>
            <p>
              <i class="bi bi-phone-fill me-3"></i>
              <a href="tel:">EMPTY</a>
            </p>
            <p>
              <i class="bi bi-telephone-fill me-3"></i>
              <a href="tel:+359 2 965 3213">+359 2 965 3213</a>
            </p>
          </div>
        </div>
      </div>
    </section>
    <div class="text-center p-3 lh-base" id="copyright">
      © <a v-text="year"></a> Copyright:
      <a class="text-reset fw-bold pb-1" href="https://github.com/hoosengold" target="_blank"> hoosengold</a>
      <br>
      <a>This page is licensed under the <a
        href="https://www.gnu.org/licenses/gpl-3.0.en.html#license-text"
        target="_blank">GNU General Public License</a>.</a>
    </div>
  </footer>
</template>

<style scoped>
header {
  line-height: 1.5;
  max-height: 10%;
  min-height: 5%;
  width: 100%;
  position: sticky;
  top: 0;
  left: 0;
  z-index: 200;
}

a.container-fluid img {
  width: auto;
  height: 100%;
}

nav {
  width: 100%;
  font-size: 12px;
  text-align: center;
}

nav a.router-link-exact-active {
  color: var(--color-text);
  text-decoration-line: underline;
}

nav a.router-link-exact-active:hover {
  background-color: transparent;
}

nav a {
  display: inline-block;
  border-left: 1px solid var(--color-border);
  padding-left: 1rem;
  padding-right: 1rem;
}

nav a:first-of-type {
  border: 0;
}

nav a:hover {
  color: var(--vt-c-fdiba-blue-pale);
}

.dropdown-menu {
  min-width: 15em;
}

.dropdown-item {
  max-width: 0.8em;
}

.dropdown-item:hover {
  text-decoration-line: underline;
  color: var(--vt-c-black-mute);
  margin-left: 10px;
  max-width: 0.8em;
}

.dropdown-item:active {
  background: transparent;
}

#copyright {
  background-color: rgba(0, 0, 0, 0.05);
}

@media (min-width: 1024px) {
  header {
    display: flex;
    place-items: start;
    width: 100%;
  }

  header .wrapper {
    display: inline-block;
    place-items: flex-start;
    flex-wrap: wrap;
  }

  nav {
    text-align: left;
    font-size: 1rem;
  }
}

footer {
  background: rgba(0, 0, 0, 0.05);
}

</style>
