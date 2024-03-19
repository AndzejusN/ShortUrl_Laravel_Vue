<template>
  <main class="main-content-wrapper">
    <LinkInputSection />
    <LinkRedirectSection />
  </main>
</template>

<script>
import LinkInputSection from './LinkInputSection.vue';
import LinkRedirectSection from './LinkRedirectSection.vue';

export default {
  components: {
    LinkInputSection,
    LinkRedirectSection,
  }
}
</script>

<style scoped>

.main-content-wrapper {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
}
</style>