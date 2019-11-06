<template>
    <div class="signup-wrapper border border-light">
        <form class="form-signup" @submit.prevent="signup">
            <h2 class="form-signup-heading">Please sign up</h2>
            <div class="alert alert-danger" v-if="error">{{ error }}</div>
            <label for="inputUsername" class="sr-only">Username</label>
            <input v-model="username" type="username" id="inputUsername" class="form-control" placeholder="Username" required autofocus>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign up</button>
            <router-link class="btn btn-lg btn-primary btn-block btn-login" to="login">Login if you have an account</router-link>
        </form>
    </div>
</template>

<script>
import { mapGetters } from 'vuex'
export default {
  name: 'SignUp',
  data () {
    return {
      username: '',
      error: false
    }
  },
  computed: {
    ...mapGetters({ currentUser: 'currentUser' })
  },
  created () {
    this.checkCurrentSignUp()
  },
  updated () {
    this.checkCurrentSignUp()
  },
  methods: {
    signup () {
      this.axios
        .post('/users', {name: this.username})
        .then(res => this.signupSuccessful(res))
        .catch(() => this.signupFailed())
    },
    signupSuccessful (res) {
      if (!res.data.auth_token) {
        this.signupFailed()
        return
      }
      this.error = false
      localStorage.token = res.data.auth_token
      this.$store.dispatch('signup')
    },
    signupFailed () {
      this.error = 'Sign up failed!'
      this.$store.dispatch('logout')
      delete localStorage.token
    },
    checkCurrentSignUp () {
      if (this.currentUser) {
        this.$router.replace('/')
      }
    }
  }
}
</script>
