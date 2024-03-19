<template>
  <div>
    <div class="main-background-container">
      <div class="container">
        <MainContent />
      </div>
    </div>
    <div class="footer-background-container">
      <div class="container">
        <FooterSection />
      </div>
    </div>
  </div>
</template>

<script>
import MainContent from './components/MainContent.vue';
import FooterSection from './components/FooterSection.vue';

export default {
  components: {
    MainContent,
    FooterSection
  }
}
</script>

