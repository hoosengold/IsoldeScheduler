<script setup lang="ts">
import {RouterView} from 'vue-router'
import {addDropdowns} from './components/scripts/add_dropdown_courses'
import {onMounted} from "vue";
import MobileNavbar from "./components/navbar/MobileNavbar.vue";
import MobileFooter from "./components/footer/MobileFooter.vue";
</script>

<template>
  <header>
    <MobileNavbar/>
  </header>
  <RouterView/>
  <footer class="text-center text-lg-start text-muted mt-auto" id="footer">
    <MobileFooter/>
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
}

footer {
  background: rgba(0, 0, 0, 0.05);
}

</style>
