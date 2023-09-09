<script setup lang="ts">
const source = import.meta.env.VITE_SOURCE_CODE
const uni = import.meta.env.VITE_UNI
const fdiba_url = import.meta.env.VITE_FDIBA
const fdiba_facebook = import.meta.env.VITE_FDIBA_FACEBOOK
const fdiba_instagram = import.meta.env.VITE_FDIBA_INSTAGRAM
const fdiba_linkedin = import.meta.env.VITE_FDIBA_LINKEDIN
const year = (new Date()).getFullYear()
</script>

<template>
  <section class="w-100">
    <div class="d-grid justify-content-center border-top text-lg-start ms-5">
      <div class="row d-grid mt-4" style="width: 85%">
        <div class="col-md-3 col-lg-4 col-xl-4 mx-auto mb-4 ms-4 me-4 text-center">
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
                   src="../../assets/Tu-sofia-logo.svg">
            </a>
            <a :href="fdiba_url"
               target="_blank"
               class="me-4 text-reset align-items-center">
              <img width="16"
                   alt="fdiba-logo-black"
                   src="../../assets/fdiba-logo-black.png">
            </a>
            <a :href="source" target="_blank" class="me-4 text-reset">
              <i class="bi bi-github" style="color: var(--vt-c-black-mute)"></i>
            </a>
          </div>
        </div>
        <div class="col-md-3 col-lg-4 col-xl-4 mx-auto mb-4 ms-4 me-4 text-center">
          <a class="btn btn-primary bg-transparent border-0 ps-5 pe-5 mb-3" data-bs-toggle="collapse"
             href="#collapseLinks" role="button"
             aria-expanded="false" aria-controls="collapseLinks">
            <label class="text-uppercase fw-bold">Useful Links &#x25BF;</label>
          </a>
          <div class="collapse" id="collapseLinks">
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
        </div>
        <div class="col-md-3 col-lg-4 col-xl-4 mx-auto mb-4 ms-4 me-4 text-center">
          <a class="btn btn-primary bg-transparent border-0 ps-5 pe-5 mb-3" data-bs-toggle="collapse"
             href="#collapseContact" role="button"
             aria-expanded="false" aria-controls="collapseContact">
            <label class="text-uppercase fw-bold">Contact &#x25BF;</label>
          </a>
          <div class="collapse text-start" id="collapseContact">
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
</template>

<style>
#copyright {
  background-color: rgba(0, 0, 0, 0.05);
}

label{
  text-decoration-line: underline;
  color: #565960;
}

</style>
