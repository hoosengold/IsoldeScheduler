<script setup lang="ts">
import {RouterLink} from 'vue-router'

function scrollToTop() {
  window.scrollTo(0,0);
}
</script>

<template>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="background-color: var(--color-background-mute)">
    <div class="container-fluid">
      <RouterLink to="/" class="navbar-brand" @click="scrollToTop">
        <img alt="FDIBA logo" class="logo img-fluid" src="../../assets/fdiba-logo-white.png" width="125"
             height="43"/>
      </RouterLink>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
               data-bs-auto-close="outside"
               aria-expanded="false">
              Courses
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="#" id="dropdown-inf">INF &#9658;</a>
                <ul class="dropdown-menu dropdown-submenu">
                  <li><a class="dropdown-item" href="#">Something else here2</a></li>
                  <li><a class="dropdown-item" href="#">Something else here2</a></li>
                  <li><a class="dropdown-item" href="#">Something else here2</a>
                    <ul class="dropdown-menu dropdown-submenu">
                      <li>
                        <a class="dropdown-item" href="#">Multi level 1</a>
                      </li>
                      <li>
                        <a class="dropdown-item" href="#">Multi level 2</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a class="dropdown-item" href="#" id="dropdown-winf">WINF &#9658;</a>
              </li>
              <li><a class="dropdown-item" href="#" id="dropdown-mit">MIT &#9658;</a>
              </li>
              <li><a class="dropdown-item" href="#" id="dropdown-inf-msc">INF (M.Sc.) &#9658;</a>
              </li>
              <li><a class="dropdown-item" href="#" id="dropdown-winf-msc">WINF (M.Sc.) &#9658;</a>
              </li>
              <li><a class="dropdown-item" href="#" id="dropdown-im-msc">IM (M.Sc.) &#9658;</a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <RouterLink to="/login" class="nav-link" @click="scrollToTop">
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
</template>

<style>
a.container-fluid img {
  width: auto;
  height: 100%;
}

nav {
  width: 100%;
  text-align: center;
  font-size: 0.9rem;
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
  min-width: 10em;
  right: 100%;
  left: auto;
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

.dropdown-menu > li:hover > .dropdown-submenu {
  display: inline-block;
}

.dropdown-hover:hover > .dropdown-menu {
  display: inline-block;
}

.dropdown-hover > .dropdown-toggle:active {
  pointer-events: none;
}

.dropdown-menu li {
  position: relative;
}

.dropdown-menu .dropdown-submenu {
  display: none;
  position: absolute;
  left: 100%;
  top: -7px;
}
</style>
