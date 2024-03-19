<template>
  <section class="link-input-wrapper">
    <div class="link-input-section">
      <h1 class="header-link-title">Create short link</h1>
      <!-- Bind the form submission to the handleSubmit method -->
      <form class="create-form" @submit.prevent="handleSubmit">
        <!-- Bind the input value to the data property longLink -->
        <input v-model="longLink" type="url" name="long_link" id="long_link" placeholder="https://example.com">
        <div class="buttons-container">
          <button type="reset" class="link-clear-button clear-button blue-button">Reset</button>
          <!-- Change the button type to submit -->
          <button type="submit" class="link-submit-button submit-button green-button">Submit</button>
        </div>
      </form>
    </div>
    <div class="link-output-info-section">
      <!-- Use v-if directive to conditionally render the short link -->
      <p v-if="shortLink">Short Link: {{ shortLink }}</p>
    </div>

  </section>
</template>

<script>
import axios from 'axios';

export default {
  data() {
    return {
      longLink: '', // Initialize longLink as an empty string
      shortLink: null // Initialize shortLink as null
    }
  },
  methods: {
    handleSubmit() {
      // Make an AJAX request to your Laravel backend to create the short link
      // You can use Axios or the Fetch API for this purpose
      axios.post('/links', { long_link: this.longLink })
        .then(response => {
          // Handle success, set the shortLink value from the response
          this.shortLink = response.data.short_link;
          console.log('Short link created:', this.shortLink);
        })
        .catch(error => {
          // Handle error, e.g., display an error message to the user
          console.error('Error creating short link:', error);
        });
    }
  }
}
</script>

<style scoped>
.link-input-wrapper {
  display: flex;
  flex-wrap: wrap;
  width: 50%;
}

.link-input-section,
.link-output-info-section {
  text-align: center;
  min-height: 100px;
  width: 100%;
}

.header-link-title {
  display: flex;
  justify-content: center;
  align-items: center;
  color: darkslateblue;
}

.create-form {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-wrap: wrap;
  min-height: 100px;
}

#long_link {
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
  .link-input-wrapper {
    width: 100%;
  }
}
</style>
