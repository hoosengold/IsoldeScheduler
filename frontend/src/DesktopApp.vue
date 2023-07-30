<script setup lang="ts">
import {RouterView} from 'vue-router'
import {addDropdowns} from './components/scripts/add_dropdown_courses'
import {onMounted} from "vue";
import DesktopFooter from "./components/footer/DesktopFooter.vue";
import DesktopNavbar from "./components/navbar/DesktopNavbar.vue";

</script>

<template>
  <header>
    <DesktopNavbar/>
  </header>
  <RouterView/>
  <footer class="text-center text-lg-start text-muted mt-auto" id="footer">
    <DesktopFooter/>
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
  min-width: 10em;
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

.dropdown-menu li {
  position: relative;
}

.dropdown-menu .dropdown-submenu {
  display: none;
  position: absolute;
  left: 100%;
  top: -7px;
}

.dropdown-menu {
  right: 100%;
  left: auto;
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
