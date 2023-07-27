<script setup lang="ts">
import {RouterLink, RouterView} from 'vue-router'
</script>

<template>
  <header>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: var(--color-background-mute)">
      <div class="container-fluid">
        <RouterLink to="/" class="navbar-brand">
          <img alt="FDIBA logo" class="logo" src="../src/assets/fdiba_logo_white.png"
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
              <RouterLink to="/about" class="nav-link">About</RouterLink>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <RouterView/>
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

.dropdown-item{
  max-width: 0.8em;
}

.dropdown-item:hover {
  text-decoration-line: underline;
  color: var(--vt-c-black-mute);
  margin-left: 10px;
  max-width: 0.8em;
}

.dropdown-item:active{
  background: transparent;
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
</style>
