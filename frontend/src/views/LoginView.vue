<script setup lang="ts">
import {ref, onMounted} from 'vue'

// reactive state
const count = ref(0)

// functions that mutate state and trigger updates
function checkData() {
  //count.value++
  console.log("Pressed")
}

function increment() {
  count.value++
}

// lifecycle hooks
onMounted(() => {
  console.log(`The initial count is ${count.value}.`)
})
</script>

<template>
  <section class="h-100 pb-4">
    <div class="container py-1 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <div class="card shadow p-3 mb-5 rounded bg-light-subtle border border-dark">
            <div class="card-body p-5 text-center">
              <h3 class="mb-5">Sign in</h3>
              <div class="form-outline rounded mb-4">
                <input type="password"
                       id="typePasswordX-2"
                       class="form-control form-control-lg border border-dark-subtle"
                       placeholder="Personal ID"/>
              </div>
              <div class="form-check d-flex justify-content-start mb-4">
                <input class="form-check-input border border-dark-subtle me-2"
                       type="checkbox"
                       id="formButton"
                       checked/>
                <label class="form-check-label"
                       for="formButton">Remember me</label>
              </div>
              <button class="btn btn-primary btn-lg btn-block"
                      type="submit">Login
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<style>

</style>
