<template>
  <section class="link-redirect-wrapper">
    <div class="link-redirect-section">
      <h1 class="header-redirect-title">Use short link</h1>
      <form class="redirect-form" @submit.prevent="handleSubmit" novalidate>
        <input v-model="shortLink" type="url" name="short_link" id="short_link" placeholder="Just add short link">
        <div class="buttons-container">
          <button type="reset" class="redirect-clear-button clear-button blue-button">Reset</button>
          <button type="submit" class="redirect-submit-button submit-button green-button">Go to URL</button>
        </div>
      </form>
    </div>

    <div class="link-redirect-info-section">
      <p v-if="reply">{{ reply }}</p>
    </div>
  </section>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      shortLink: '', // Initialize shortLink data as an empty string
      reply: '' // Initialize reply data as an empty string
    }
  },
  methods: {
    handleSubmit() {
      // Make a POST request to redirect to the provided short link
      axios.post('/redirect', { short_link: this.shortLink })
        .then(response => {
          // Log the response data for debugging
          console.log('Response:', response.data);

          // Handle success
          if (response.data && response.data.long_link) {
            // Open the long link in a new window/tab
            console.log('Long link:', response.data.long_link);
            window.open(response.data.long_link, '_blank');
          } else if (response.data && response.data.reply) {
            // Display the error message
            console.log('Reply:', response.data.reply);
            this.reply = response.data.reply;
          } else {
            console.log('Unknown response format:', response.data);
          }
        })
        .catch(error => {
          // Handle error
          console.error('Error redirecting:', error);
        });
    }
  }
}
</script>

<style scoped>
.link-redirect-wrapper {
  display: flex;
  flex-wrap: wrap;
  width: 50%;
}

.link-redirect-section,
.link-redirect-info-section {
  text-align: center;
  min-height: 100px;
  width: 100%;
}

.header-redirect-title {
  display: flex;
  justify-content: center;
  align-items: center;
  color: darkslateblue;
}

.redirect-form {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  min-height: 100px;
}

#short_link {
  min-width: 280px;
}

.buttons-container {
  width: 100%;
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
}

.clear-button,
.submit-button {
  min-width: 140px;
  border-radius: 25px;
}

.blue-button {
  background-color: lightblue;
  border-color: aqua;
}

.green-button {
  background-color: lightgreen;
  border-color: greenyellow;
}

button {
  font-weight: 600;
}

@media screen and (max-width: 768px) {
  .link-redirect-wrapper {
    width: 100%;
  }
}
</style>
