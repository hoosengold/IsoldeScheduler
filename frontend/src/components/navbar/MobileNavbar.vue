<script setup lang="ts">
import {RouterLink} from 'vue-router'

function scrollToTop() {
  window.scrollTo(0, 0);
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
              <div class="accordion open" id="accordionNavbar">
                <div class="accordion-item">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseInf" aria-expanded="false" aria-controls="collapseInf">
                    INF
                  </button>
                  <div id="collapseInf" class="accordion-collapse collapse" aria-labelledby="headingOne"
                       data-bs-parent="#accordionNavbar">
                    <div class="accordion-body d-grid">
                      <a href="#!" class="link-dark p-2">2018</a>
                      <a href="#!" class="link-dark p-2">2019</a>
                      <a href="#!" class="link-dark p-2">2020</a>
                      <a href="#!" class="link-dark p-2">2021</a>
                      <a href="#!" class="link-dark p-2">2022</a>
                      <a href="#!" class="link-dark p-2">2023</a>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseWinf" aria-expanded="false" aria-controls="collapseWinf">
                    WINF
                  </button>
                  <div id="collapseWinf" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                       data-bs-parent="#accordionNavbar">
                    <div class="accordion-body">
                      <a href="#!" class="link-dark pb-2">2018</a>
                      <a href="#!" class="link-dark">2019</a>
                      <a href="#!" class="link-dark">2020</a>
                      <a href="#!" class="link-dark">2021</a>
                      <a href="#!" class="link-dark">2022</a>
                      <a href="#!" class="link-dark">2023</a>
                    </div>
                  </div>
                </div>
                <div class="accordion-item">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse"
                          data-bs-target="#collapseMit" aria-expanded="false" aria-controls="collapseMit">
                    MIT
                  </button>
                  <div id="collapseMit" class="accordion-collapse collapse" aria-labelledby="headingThree"
                       data-bs-parent="#accordionNavbar">
                    <div class="accordion-body">
                      <a href="#!" class="link-dark">2018</a>
                      <a href="#!" class="link-dark">2019</a>
                      <a href="#!" class="link-dark">2020</a>
                      <a href="#!" class="link-dark">2021</a>
                      <a href="#!" class="link-dark">2022</a>
                      <a href="#!" class="link-dark">2023</a>
                    </div>
                  </div>
                </div>
              </div>
              <li><a class="dropdown-item btn btn-primary" href="#collapseInfMsc" id="dropdown-inf"
                     data-bs-toggle="collapse" role="button" aria-expanded="false"
                     aria-controls="collapseInfMsc">INF (M.Sc.) &#9658;</a>
              </li>
              <div class="collapse bg-transparent border-0" id="collapseInfMsc">
                <div class="card card-body">
                  <a href="#!" class="link-dark pb-2">2018</a>
                  <a href="#!" class="link-dark pb-2">2019</a>
                  <a href="#!" class="link-dark pb-2">2020</a>
                  <a href="#!" class="link-dark pb-2">2021</a>
                  <a href="#!" class="link-dark pb-2">2022</a>
                  <a href="#!" class="link-dark pb-2">2023</a>
                </div>
              </div>
              <li><a class="dropdown-item btn btn-primary" href="#collapseWinfMsc" id="dropdown-inf"
                     data-bs-toggle="collapse" role="button" aria-expanded="false"
                     aria-controls="collapseWinfMsc">WINF (M.Sc.) &#9658;</a>
              </li>
              <div class="collapse bg-transparent border-0" id="collapseWinfMsc">
                <div class="card card-body">
                  <a href="#!" class="link-dark">2018</a>
                  <a href="#!" class="link-dark">2019</a>
                  <a href="#!" class="link-dark">2020</a>
                  <a href="#!" class="link-dark">2021</a>
                  <a href="#!" class="link-dark">2022</a>
                  <a href="#!" class="link-dark">2023</a>
                </div>
              </div>
              <li><a class="dropdown-item btn btn-primary" href="#collapseIm" id="dropdown-inf"
                     data-bs-toggle="collapse" role="button" aria-expanded="false"
                     aria-controls="collapseIm">IM (M.Sc.) &#9658;</a>
              </li>
              <div class="collapse bg-transparent border-0" id="collapseIm">
                <div class="card card-body">
                  <a href="#!" class="link-dark">2018</a>
                  <a href="#!" class="link-dark">2019</a>
                  <a href="#!" class="link-dark">2020</a>
                  <a href="#!" class="link-dark">2021</a>
                  <a href="#!" class="link-dark">2022</a>
                  <a href="#!" class="link-dark">2023</a>
                </div>
              </div>
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
  font-size: 0.9rem;
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
  border: none;
  padding-left: 1rem;
  padding-right: 1rem;
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
  /*margin-left: 10px;*/
  max-width: 0.8em;
  background: transparent;
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

.accordion > .accordion-item :hover{
  background-color: white;
  box-shadow: none;
}

@media (min-width: 1024px) {
  nav {
    text-align: left;
    font-size: 1rem;
  }
}
</style>
